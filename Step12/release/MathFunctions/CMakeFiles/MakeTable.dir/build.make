# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/vineeth/Practice/c++/cmake-practice/Step12

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/vineeth/Practice/c++/cmake-practice/Step12/release

# Include any dependencies generated for this target.
include MathFunctions/CMakeFiles/MakeTable.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include MathFunctions/CMakeFiles/MakeTable.dir/compiler_depend.make

# Include the progress variables for this target.
include MathFunctions/CMakeFiles/MakeTable.dir/progress.make

# Include the compile flags for this target's objects.
include MathFunctions/CMakeFiles/MakeTable.dir/flags.make

MathFunctions/CMakeFiles/MakeTable.dir/codegen:
.PHONY : MathFunctions/CMakeFiles/MakeTable.dir/codegen

MathFunctions/CMakeFiles/MakeTable.dir/MakeTable.cxx.o: MathFunctions/CMakeFiles/MakeTable.dir/flags.make
MathFunctions/CMakeFiles/MakeTable.dir/MakeTable.cxx.o: /Users/vineeth/Practice/c++/cmake-practice/Step12/MathFunctions/MakeTable.cxx
MathFunctions/CMakeFiles/MakeTable.dir/MakeTable.cxx.o: MathFunctions/CMakeFiles/MakeTable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/vineeth/Practice/c++/cmake-practice/Step12/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object MathFunctions/CMakeFiles/MakeTable.dir/MakeTable.cxx.o"
	cd /Users/vineeth/Practice/c++/cmake-practice/Step12/release/MathFunctions && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT MathFunctions/CMakeFiles/MakeTable.dir/MakeTable.cxx.o -MF CMakeFiles/MakeTable.dir/MakeTable.cxx.o.d -o CMakeFiles/MakeTable.dir/MakeTable.cxx.o -c /Users/vineeth/Practice/c++/cmake-practice/Step12/MathFunctions/MakeTable.cxx

MathFunctions/CMakeFiles/MakeTable.dir/MakeTable.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MakeTable.dir/MakeTable.cxx.i"
	cd /Users/vineeth/Practice/c++/cmake-practice/Step12/release/MathFunctions && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vineeth/Practice/c++/cmake-practice/Step12/MathFunctions/MakeTable.cxx > CMakeFiles/MakeTable.dir/MakeTable.cxx.i

MathFunctions/CMakeFiles/MakeTable.dir/MakeTable.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MakeTable.dir/MakeTable.cxx.s"
	cd /Users/vineeth/Practice/c++/cmake-practice/Step12/release/MathFunctions && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vineeth/Practice/c++/cmake-practice/Step12/MathFunctions/MakeTable.cxx -o CMakeFiles/MakeTable.dir/MakeTable.cxx.s

# Object files for target MakeTable
MakeTable_OBJECTS = \
"CMakeFiles/MakeTable.dir/MakeTable.cxx.o"

# External object files for target MakeTable
MakeTable_EXTERNAL_OBJECTS =

MakeTable: MathFunctions/CMakeFiles/MakeTable.dir/MakeTable.cxx.o
MakeTable: MathFunctions/CMakeFiles/MakeTable.dir/build.make
MakeTable: MathFunctions/CMakeFiles/MakeTable.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/vineeth/Practice/c++/cmake-practice/Step12/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../MakeTable"
	cd /Users/vineeth/Practice/c++/cmake-practice/Step12/release/MathFunctions && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MakeTable.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
MathFunctions/CMakeFiles/MakeTable.dir/build: MakeTable
.PHONY : MathFunctions/CMakeFiles/MakeTable.dir/build

MathFunctions/CMakeFiles/MakeTable.dir/clean:
	cd /Users/vineeth/Practice/c++/cmake-practice/Step12/release/MathFunctions && $(CMAKE_COMMAND) -P CMakeFiles/MakeTable.dir/cmake_clean.cmake
.PHONY : MathFunctions/CMakeFiles/MakeTable.dir/clean

MathFunctions/CMakeFiles/MakeTable.dir/depend:
	cd /Users/vineeth/Practice/c++/cmake-practice/Step12/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/vineeth/Practice/c++/cmake-practice/Step12 /Users/vineeth/Practice/c++/cmake-practice/Step12/MathFunctions /Users/vineeth/Practice/c++/cmake-practice/Step12/release /Users/vineeth/Practice/c++/cmake-practice/Step12/release/MathFunctions /Users/vineeth/Practice/c++/cmake-practice/Step12/release/MathFunctions/CMakeFiles/MakeTable.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : MathFunctions/CMakeFiles/MakeTable.dir/depend

