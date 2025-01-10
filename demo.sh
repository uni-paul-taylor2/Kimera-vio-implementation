# not finished yet ;-;
cd $HOME/cmake_repositories/Kimera-VIO
mkdir $HOME/datasets
cd $HOME/datasets
wget https://github.com/ethz-asl/kimera-vio/raw/main/datasets/tum_rgbd_bag/tum_rgbd_bagfile.bag
rosbag play ~/datasets/tum_rgbd_bagfile.bag
rostopic list
rosnode list
g++ demo.cpp -o demo.o
./demo.o
