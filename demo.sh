mkdir build
cd build
cmake ..
make -j$(nproc)
./demo $HOME/cmake_repositories/ORB_SLAM3/Vocabulary/ORBvoc.txt ../demo_data.yaml ../demo_data
#almost there, just to tweak the params to make sense in this and the cpp
