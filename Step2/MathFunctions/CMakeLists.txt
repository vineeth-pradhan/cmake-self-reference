# TODO 14: Remove mysqrt.cxx from the list of sources

# TODO 1: Add a library called MathFunctions with sources MathFunctions.cxx
# and mysqrt.cxx
# Hint: You will need the add_library command
add_library(MathFunctions MathFunctions.cxx)
# add_library(mysqrt.so SHARED mysqrt.cxx)

# TODO 7: Create a variable USE_MYMATH using option and set default to ON
OPTION(USE_MYMATH "Use custom math function" ON)

# TODO 8: If USE_MYMATH is ON, use target_compile_definitions to pass
# USE_MYMATH as a precompiled definition to our source files
if(USE_MYMATH STREQUAL ON)
  target_compile_definitions(MathFunctions PRIVATE "USE_MYMATH")

  # TODO 12: When USE_MYMATH is ON, add a library for SqrtLibrary with
  # source mysqrt.cxx
  add_library(SqrtLibrary STATIC mysqrt.cxx)
  target_link_libraries(MathFunctions PRIVATE SqrtLibrary)

  # TODO 13: When USE_MYMATH is ON, link SqrtLibrary to the MathFunctions Library
endif()


