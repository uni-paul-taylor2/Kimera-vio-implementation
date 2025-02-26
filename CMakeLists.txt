cmake_minimum_required(VERSION 3.10)
project(vSLAMImplementation)

set(CMAKE_CXX_STANDARD 14)

# Find Packages
find_package(Eigen3 REQUIRED)
find_package(OpenCV REQUIRED)
find_package(Pangolin REQUIRED)
find_package(ORB_SLAM3 REQUIRED)

# Include Directories
include_directories(
    ${EIGEN3_INCLUDE_DIRS}
    ${OpenCV_INCLUDE_DIRS}
    ${Pangolin_INCLUDE_DIRS}
    ${ORB_SLAM3_INCLUDE_DIRS}
)

# Add Executable
add_executable(vSLAM_Implementation demo.cpp)

# Link Libraries
target_link_libraries(
    vSLAM_Implementation
    ${EIGEN3_LIBRARIES} 
    ${OpenCV_LIBS}
    ${Pangolin_LIBRARIES}
    ${ORB_SLAM3_LIBRARIES}
)
