This directory contains source code examples for sample CMake application.
Each step has its own subdirectory containing code that has been used as a
starting point. Each step is progressive so that it provides the complete 
solution for it's previous step.

# Troubleshooting

## On Mac devices
When the cmd `sh build.sh && sh install.sh` is run
There would be a likely error `Reason: no LC_RPATH's found`:

Run `install_name_tool -add_rpath /Users/vineeth/Practice/cmake-installs/Tutorial/lib /Users/vineeth/Practice/cmake-installs/Tutorial/bin/Tutorial`
