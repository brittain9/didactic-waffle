cmake_minimum_required(VERSION 3.24)
project(OpenGL)

set(CMAKE_CXX_STANDARD 20)

add_executable(OpenGL src/main.cpp)

target_include_directories(OpenGL PRIVATE
        ${CMAKE_SOURCE_DIR}/src/vendor/glfw-3.3.8/include
        )

set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)

add_subdirectory(${CMAKE_SOURCE_DIR}/src/vendor/glfw-3.3.8)
target_link_libraries(OpenGL glfw)
find_package(OpenGL REQUIRED)
target_link_libraries(OpenGL OpenGL::GL)


