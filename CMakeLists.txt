cmake_minimum_required(VERSION 3.10)
project(KimeraVioImplementation)

set(CMAKE_CXX_STANDARD 14)

find_package(kimera_vio REQUIRED)
find_package(Eigen3 REQUIRED)

include_directories(${kimera_vio_INCLUDE_DIRS} ${EIGEN3_INCLUDE_DIR})

add_executable(kimera_vio_demo demo.cpp)

target_link_libraries(kimera_vio_demo ${kimera_vio_LIBRARIES})
