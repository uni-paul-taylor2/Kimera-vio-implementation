cmake_minimum_required(VERSION 3.10)
project(KimeraVioImplementation)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_PREFIX_PATH "/usr/local/lib/cmake/opengv-1.0" ${CMAKE_PREFIX_PATH})

# Find Packages
find_package(kimera_vio REQUIRED)
find_package(Eigen3 REQUIRED)
find_package(OpenCV REQUIRED)
find_package(opengv REQUIRED)
find_package(GTSAM REQUIRED)
find_package(DBoW2 REQUIRED)
find_package(KimeraRPGO REQUIRED)

# Include Directories
include_directories(${kimera_vio_INCLUDE_DIRS}
                    ${EIGEN3_INCLUDE_DIR}
                    ${OpenCV_INCLUDE_DIRS}
                    ${opengv_INCLUDE_DIRS}
                    ${GTSAM_INCLUDE_DIRS}
                    ${DBoW2_INCLUDE_DIRS}
                    ${KimeraRPGO_INCLUDE_DIRS})

# Add Executable
add_executable(kimera_vio_demo demo.cpp)

# Link Libraries
target_link_libraries(kimera_vio_demo 
                      ${kimera_vio_LIBRARIES} 
                      ${OpenCV_LIBRARIES} 
                      ${opengv_LIBRARIES} 
                      ${GTSAM_LIBRARIES} 
                      ${DBoW2_LIBRARIES} 
                      ${KimeraRPGO_LIBRARIES})
