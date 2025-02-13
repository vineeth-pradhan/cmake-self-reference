# TODO 1: Set the minimum required version of CMake to be 3.10
cmake_minimum_required(VERSION 3.10)

# TODO 2: Create a project named SquareRoot
project(SquareRoot VERSION 1.0)

# TODO 7: Set the project version number as 1.0 in the above project command

# TODO 6: Set the variable CMAKE_CXX_STANDARD to 11
#         and the variable CMAKE_CXX_STANDARD_REQUIRED to True
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_EXPORT_COMPILE_COMMANDS True)

# TODO 8: Use configure_file to configure and copy SquareRootConfig.h.in to
#         SquareRootConfig.h
configure_file(SquareRootConfig.h.in SquareRootConfig.h)

# TODO 3: Add an executable called SquareRoot to the project
add_executable(SquareRoot SquareRoot.cxx)
# Hint: Be sure to specify the source file as square_root.cxx

# TODO 9: Use target_include_directories to include ${PROJECT_BINARY_DIR}
target_include_directories(SquareRoot PUBLIC "${PROJECT_BINARY_DIR}")
