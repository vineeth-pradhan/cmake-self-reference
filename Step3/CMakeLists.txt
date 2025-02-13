cmake_minimum_required(VERSION 3.10)

# set the project name and version
project(SquareRoot VERSION 1.0)

# TODO 4: Replace the following code by:
# * Creating an interface library called square_root_compiler_flags
#   Hint: use add_library() with the INTERFACE signature
# * Add compiler feature cxx_std_11 to square_root_compiler_flags
#   Hint: Use target_compile_features() - DONE

add_library(square_root_compiler_flags INTERFACE)
target_compile_features(square_root_compiler_flags INTERFACE cxx_std_11)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# configure a header file to pass some of the CMake settings
# to the source code
configure_file(SquareRootConfig.h.in SquareRootConfig.h)

# TODO 2: Remove EXTRA_INCLUDES list - DONE

# add the MathFunctions library
add_subdirectory(MathFunctions)
# list(APPEND EXTRA_INCLUDES "${PROJECT_SOURCE_DIR}/MathFunctions")

# add the executable
add_executable(SquareRoot square_root.cxx)

# TODO 5: Link SquareRoot to square_root_compiler_flags

target_link_libraries(SquareRoot PUBLIC MathFunctions square_root_compiler_flags)

# TODO 3: Remove use of EXTRA_INCLUDES - DONE

# add the binary tree to the search path for include files
# so that we will find SquareRootConfig.h
target_include_directories(SquareRoot PUBLIC
                           "${PROJECT_BINARY_DIR}"
                           )
