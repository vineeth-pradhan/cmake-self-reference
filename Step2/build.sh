#!/bin/sh
clear
echo "Removing build directory.....🧹"
rm -rf build
echo "Building with cmake.....🏗️"
cmake -Bbuild -S.
echo "Running make cmd.....💨"
make -Cbuild
echo "Done....🔥"
