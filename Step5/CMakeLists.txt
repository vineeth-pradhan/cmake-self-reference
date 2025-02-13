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

# TODO 3: Install SquareRoot in the bin directory
# Hint: Use the TARGETS and DESTINATION parameters
install(TARGETS SquareRoot DESTINATION bin)

# TODO 4: Install SquareRootConfig.h to the include directory
# Hint: Use the FILES and DESTINATION parameters
install(FILES "${PROJECT_BINARY_DIR}/SquareRootConfig.h" DESTINATION include)

# TODO 5: Enable testing
enable_testing()

# TODO 6: Add a test called Runs which runs the following command:
# $ SquareRoot 25
add_test(NAME Runs COMMAND SquareRoot 25)

# TODO 7: Add a test called Usage which runs the following command:
# $ SquareRoot
# Make sure the expected output is displayed.
# Hint: Use the PASS_REGULAR_EXPRESSION property with "Usage.*number"
add_test(NAME Usage COMMAND SquareRoot)
set_tests_properties(Usage PROPERTIES PASS_REGULAR_EXPRESSION "Usage:.*number")

# TODO 8: Add a test which runs the following command:
# $ SquareRoot 4
# Make sure the result is correct.
# Hint: Use the PASS_REGULAR_EXPRESSION property with "4 is 2"
add_test(NAME STANDARD_USE COMMAND SquareRoot 4)
set_tests_properties(STANDARD_USE PROPERTIES PASS_REGULAR_EXPRESSION "4 is 2")

# TODO 9: Add more tests. Create a function called do_test to avoid copy +
# paste. Test the following values: 4, 9, 5, 7, 25, -25 and 0.0001.

function(do_test test_sample assertion)
  add_test(NAME ${test_sample} COMMAND SquareRoot ${test_sample})
  set_tests_properties(${test_sample} PROPERTIES PASS_REGULAR_EXPRESSION ${assertion})
endfunction()

do_test(4 "4 is 2")
do_test(9 "9 is 3")
do_test(5 "5 is 2.236")
do_test(7 "7 is 2.645")
do_test(25 "25 is 5")
do_test(0.0001 "0.0001 is 0.01")
