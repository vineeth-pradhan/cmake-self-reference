cmake_minimum_required(VERSION 3.10)

# set the project name and version
project(SquareRoot VERSION 1.0)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# configure a header file to pass some of the CMake settings
# to the source code
configure_file(SquareRootConfig.h.in headers/SquareRootConfig.h)

# TODO 2: Use add_subdirectory() to add MathFunctions to this project
add_subdirectory(MathFunctions)

# add the executable
add_executable(SquareRoot square_root.cxx)

# TODO 3: Use target_link_libraries to link the library to our executable
target_link_libraries(SquareRoot PUBLIC MathFunctions)

# TODO 4: Add MathFunctions to SquareRoot's target_include_directories()
# Hint: ${PROJECT_SOURCE_DIR} is a path to the project source. AKA This folder!
target_include_directories(SquareRoot PUBLIC "${PROJECT_BINARY_DIR}/headers" PUBLIC "${PROJECT_SOURCE_DIR}/MathFunctions")

# add the binary tree to the search path for include files
# so that we will find SquareRootConfig.h
# target_include_directories(SquareRoot PUBLIC
                           # "${PROJECT_BINARY_DIR}"
                           # )
