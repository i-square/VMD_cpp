cmake_minimum_required (VERSION 3.8)

project ("VMD_CPP")

set(CMAKE_CXX_STANDARD 14)
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3")

#find_package(Eigen3)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/eigen-3.3.5)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/eigen-3.3.5/unsupported)
add_executable (VMD_CPP "VMD.cpp" "VMD.h" "VMD_Utils.cpp")

add_custom_target(build_all_configs
    COMMAND ${CMAKE_COMMAND} --build ${CMAKE_BINARY_DIR} --target ALL_BUILD --config Debug
    COMMAND ${CMAKE_COMMAND} --build ${CMAKE_BINARY_DIR} --target ALL_BUILD --config RelWithDebInfo
    COMMAND ${CMAKE_COMMAND} --build ${CMAKE_BINARY_DIR} --target ALL_BUILD --config Release
)
