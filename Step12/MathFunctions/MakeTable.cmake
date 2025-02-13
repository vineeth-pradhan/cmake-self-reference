# first we add the executable that generates the table
add_executable(MakeTable MakeTable.cxx)
target_link_libraries(MakeTable PRIVATE square_root_compiler_flags)

# add the command to generate the source code
add_custom_command(
  OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/Table.h
  COMMAND MakeTable ${CMAKE_CURRENT_BINARY_DIR}/Table.h
  DEPENDS MakeTable
  )
