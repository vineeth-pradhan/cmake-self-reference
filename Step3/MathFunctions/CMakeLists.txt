add_library(MathFunctions MathFunctions.cxx)

# TODO 1: State that anybody linking to MathFunctions needs to include the
# current source directory, while MathFunctions itself doesn't.
# Hint: Use target_include_directories with the INTERFACE keyword

target_include_directories(MathFunctions INTERFACE "${CMAKE_CURRENT_SOURCE_DIR}")
# should we use our own math functions
option(USE_MYMATH "Use square_root provided math implementation" ON)
if (USE_MYMATH STREQUAL ON)
  target_compile_definitions(MathFunctions PRIVATE "USE_MYMATH")

  # library that just does sqrt
  add_library(SqrtLibrary STATIC
              mysqrt.cxx
              )

  # TODO 6: Link SqrtLibrary to square_root_compiler_flags
  target_link_libraries(SqrtLibrary INTERFACE square_root_compiler_flags)

  target_link_libraries(MathFunctions PRIVATE SqrtLibrary)
endif()

# TODO 7: Link MathFunctions to square_root_compiler_flags
target_link_libraries(MathFunctions INTERFACE square_root_compiler_flags)
