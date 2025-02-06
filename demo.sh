mkdir build
cd build
cmake ..
make -j$(nproc)
./demo --vio_params=/path/to/VioParams.yaml --dataset_path=/path/to/dataset/
#almost there, just to tweak the params to make sense in this and the cpp
