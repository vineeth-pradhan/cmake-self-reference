#!/bin/sh
echo "Cleaning up existing installation(if any)..... 🧹"
rm -rf /Users/vineeth/Practice/cmake-installs/SquareRoot/*
echo "Installing with cmake.....🛠️"
cmake --install build/. --prefix /Users/vineeth/Practice/cmake-installs/SquareRoot
echo "Running a sample test.....🧪"
echo "Installed dir: /Users/vineeth/Practice/cmake-installs/SquareRoot/bin/SquareRoot"
/Users/vineeth/Practice/cmake-installs/SquareRoot/bin/SquareRoot 9
echo "Done....🔥"
