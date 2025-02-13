// A simple program that computes the square root of a number
#include <iostream>
#include <string>

#include "MathFunctions.h"
#include "SquareRootConfig.h"

int main(int argc, char* argv[])
{
  if (argc < 2) {
    // report version
    std::cout << argv[0] << " Version " << SquareRoot_VERSION_MAJOR << "."
              << SquareRoot_VERSION_MINOR << std::endl;
    std::cout << "Usage: " << argv[0] << " number" << std::endl;
    return 1;
  }

  // convert input to double
  const double inputValue = std::stod(argv[1]);

  const double outputValue = mathfunctions::sqrt(inputValue);

  std::cout << "The square root of " << inputValue << " is " << outputValue
            << std::endl;
  return 0;
}
