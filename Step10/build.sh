#!/bin/sh
clear
echo "Removing build directory.....🧹"
rm -rf build
echo "Building with cmake.....🏗️"
if [ "$1" == "USE_MYMATH=OFF" ]; then
  echo "Building without USE_MYMATH....."
  cmake -Bbuild -S. -DUSE_MYMATH=OFF
else
  echo "Enabling USE_MYMATH OPTION....."
  cmake -Bbuild -S. -DUSE_MYMATH=ON
fi
echo "Running make cmd.....💨"
make -Cbuild
echo "Done....🔥"
