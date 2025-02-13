cmake_minimum_required(VERSION 3.15)

# set the project name and version
project(SquareRoot VERSION 1.0)

# specify the C++ standard
add_library(square_root_compiler_flags INTERFACE)
target_compile_features(square_root_compiler_flags INTERFACE cxx_std_11)

# add compiler warning flags just when building this project via
# the BUILD_INTERFACE genex
set(gcc_like_cxx "$<COMPILE_LANG_AND_ID:CXX,ARMClang,AppleClang,Clang,GNU,LCC>")
set(msvc_cxx "$<COMPILE_LANG_AND_ID:CXX,MSVC>")
target_compile_options(square_root_compiler_flags INTERFACE
  "$<${gcc_like_cxx}:$<BUILD_INTERFACE:-Wall;-Wextra;-Wshadow;-Wformat=2;-Wunused>>"
  "$<${msvc_cxx}:$<BUILD_INTERFACE:-W3>>"
)

# configure a header file to pass some of the CMake settings
# to the source code
configure_file(SquareRootConfig.h.in SquareRootConfig.h)

# add the MathFunctions library
add_subdirectory(MathFunctions)

# add the executable
add_executable(SquareRoot square_root.cxx)

target_link_libraries(SquareRoot PUBLIC MathFunctions square_root_compiler_flags)

# add the binary tree to the search path for include files
# so that we will find SquareRootConfig.h
target_include_directories(SquareRoot PUBLIC
                           "${PROJECT_BINARY_DIR}"
                           )

# add the install targets
install(TARGETS SquareRoot DESTINATION bin)
install(FILES "${PROJECT_BINARY_DIR}/SquareRootConfig.h"
  DESTINATION include
  )

# TODO 1: Replace enable_testing() with include(CTest)
# enable testing
include(CTest)

# does the application run
add_test(NAME Runs COMMAND SquareRoot 25)

# does the usage message work?
add_test(NAME Usage COMMAND SquareRoot)
set_tests_properties(Usage
  PROPERTIES PASS_REGULAR_EXPRESSION "Usage:.*number"
  )

# define a function to simplify adding tests
function(do_test target arg result)
  add_test(NAME Comp${arg} COMMAND ${target} ${arg})
  set_tests_properties(Comp${arg}
    PROPERTIES PASS_REGULAR_EXPRESSION ${result}
    )
endfunction()

# do a bunch of result based tests
do_test(SquareRoot 4 "4 is 2")
do_test(SquareRoot 9 "9 is 3")
do_test(SquareRoot 5 "5 is 2.236")
do_test(SquareRoot 7 "7 is 2.645")
do_test(SquareRoot 25 "25 is 5")
do_test(SquareRoot -25 "-25 is (-nan|nan|0)")
do_test(SquareRoot 0.0001 "0.0001 is 0.01")

# https://my.cdash.org/index.php?project=CMakeSquareRoot
#
# cd build
# ctest [-VV] -D Experimental
