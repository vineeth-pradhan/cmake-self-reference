#!/bin/sh
clear
echo "Removing build directory.....🧹"
rm -rf build
echo "Building with cmake.....🏗️"
if [ "$1" == "USE_MYMATH=ON" ]; then
  echo "Enabling USE_MYMATH OPTION....."
  cmake -Bbuild -S. -DUSE_MYMATH=ON
else
  echo "Building without USE_MYMATH....."
  cmake -Bbuild -S.
fi
echo "Running make cmd.....💨"
make -Cbuild
echo "Done....🔥"
