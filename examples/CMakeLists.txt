function(add_example name)
  file(GLOB SOURCES ${name}/*.cpp ${name}/*.h)
  add_executable(${name} ${SOURCES})
  target_link_libraries(${name} PRIVATE glcore)
  target_compile_definitions(${name} PRIVATE SHADER_PATH="${CMAKE_CURRENT_SOURCE_DIR}/${name}/shaders/" RESOURCES_PATH="${CMAKE_CURRENT_SOURCE_DIR}/data/")
endfunction()


add_example(collision)
add_example(subroutines)
add_example(textures)
add_example(compute)
find_package(OpenCL)
if(OpenCL_FOUND)
  message("OpenCL found")
  add_example(opencl)
  target_link_libraries(opencl PRIVATE OpenCL::OpenCL)
  # set(CL_VERSION ${OpenCL_VERSION_MAJOR}${OpenCL_VERSION_MINOR}0)
  # target_compile_definitions(opencl PRIVATE TEST=${CL_VERSION})
endif()
