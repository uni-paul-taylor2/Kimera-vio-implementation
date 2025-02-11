sudo apt update -y
sudo apt upgrade -y
#sudo apt install -y libopencv-dev libopencv-contrib-dev  #built with source instead now
#libc++-dev and libgoogle-glog-dev cannot install on the same apt install command... https://bugs.launchpad.net/ubuntu/+source/google-glog/+bug/1991919
sudo apt install -y libboost-all-dev build-essential libtbb-dev libgflags-dev libgoogle-glog-dev libavcodec-dev libavformat-dev libswscale-dev \
  unzip pkg-config libjpeg-dev libpng-dev libtiff-dev libvtk7-dev libgtk-3-dev libparmetis-dev libatlas-base-dev gfortran ffmpeg \
  libepoxy-dev libglew-dev cmake g++ ninja-build catch2 libavutil-dev libavdevice-dev libdc1394-dev libraw1394-dev libopenni-dev \
  python3-dev python3-numpy libeigen3-dev libmetis-dev xvfb python3 python3-pip python3-tk \
  libgl1-mesa-dev libwayland-dev libxkbcommon-dev wayland-protocols libegl1-mesa-dev

cd $HOME
mkdir -p cmake_repositories
cd cmake_repositories

#install opencv_contrib
if [ ! -d opencv_contrib ]; then
  git clone --branch 4.6.0 --depth=1 https://github.com/opencv/opencv_contrib.git
fi

# install opencv
if [ ! -d opencv ]; then
  git clone --branch 4.6.0 --depth=1 https://github.com/opencv/opencv.git
  cd opencv
  mkdir -p build
  cd build
  cmake .. -GNinja \
    -D CMAKE_BUILD_TYPE=RELEASE \
    -DINSTALL_C_EXAMPLES=OFF \
    -DINSTALL_PYTHON_EXAMPLES=OFF \
    -DENABLE_FAST_MATH=ON \
    -DBUILD_opencv_java=OFF \
    -DBUILD_ZLIB=ON \
    -DBUILD_TIFF=ON \
    -DWITH_GTK=ON \
    -DWITH_FFMPEG=ON \
    -DWITH_1394=ON \
    -DOPENCV_GENERATE_PKGCONFIG=ON \
    -DOPENCV_PC_FILE_NAME=opencv4.pc \
    -DOPENCV_ENABLE_NONFREE=ON \
    -DWITH_GSTREAMER=ON \
    -DWITH_V4L=ON \
    -DWITH_QT=ON \
    -DWITH_OPENGL=ON \
    -DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules/ \
    -DBUILD_EXAMPLES=ON
  sudo ninja -j $(nproc) install
  cd ../..
fi

#install Pangolin
if [ ! -d Pangolin ]; then
  git clone --recursive --depth=1 https://github.com/stevenlovegrove/Pangolin.git
  cd Pangolin
  ./scripts/install_prerequisites.sh recommended
  mkdir -p build
  cd build
  cmake .. -DCMAKE_BUILD_TYPE=RELEASE -GNinja
  sudo ninja -j $(nproc) install
  cd ../..
fi

#installing ORB_SLAM3
if [ ! -d ORB_SLAM3 ]; then
  git clone --depth=1 https://github.com/uni-paul-taylor2/ORB_SLAM3
  cd ORB_SLAM3
  ./build.sh
  cd build
  sudo ninja -j $(nproc) install
  cd ../..
fi
