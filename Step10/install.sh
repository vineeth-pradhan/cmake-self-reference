#!/bin/sh
echo "Cleaning up existing installation(if any)..... 🧹"
rm -rf /Users/vineeth/Practice/cmake-installs/Tutorial/*
echo "Installing with cmake.....🛠️"
cmake --install build/. --prefix /Users/vineeth/Practice/cmake-installs/Tutorial
echo "Running a sample test.....🧪"
echo "Installed dir: /Users/vineeth/Practice/cmake-installs/Tutorial/bin/Tutorial"
/Users/vineeth/Practice/cmake-installs/Tutorial/bin/Tutorial 9
echo "Done....🔥"
