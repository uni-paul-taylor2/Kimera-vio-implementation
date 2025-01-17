cmake_minimum_required(VERSION 3.10)
project(KimeraVioImplementation)

set(CMAKE_CXX_STANDARD 14)

# Find Kimera-VIO
find_package(kimera_vio REQUIRED)

# Include directories
include_directories(${kimera_vio_INCLUDE_DIRS})

# Add executable
add_executable(kimera_vio_demo demo.cpp)

# Link libraries
target_link_libraries(kimera_vio_demo ${kimera_vio_LIBRARIES})
