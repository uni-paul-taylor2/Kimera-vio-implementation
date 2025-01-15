sudo apt install -y libboost-all-dev build-essential libtbb-dev libgflags-dev libgoogle-glog-dev libavcodec-dev libavformat-dev libswscale-dev
sudo apt install -y unzip pkg-config libjpeg-dev libpng-dev libtiff-dev libvtk7-dev libgtk-3-dev libparmetis-dev libatlas-base-dev gfortran
sudo apt install -y ffmpeg python3-dev python3-numpy libeigen3-dev libopencv-dev libopencv-contrib-dev

cd $HOME
mkdir cmake_repositories
cd cmake_repositories

# install gtsam
if [ ! -d gtsam ]; then
  #git clone git@github.com:borglab/gtsam.git
  #above notation was causing some concerning looking prompts so back to the default method
  git clone https://github.com/borglab/gtsam.git
  cd gtsam
  git checkout tags/4.2
  mkdir build
  cd build
  cmake .. -DCMAKE_INSTALL_PREFIX=/usr/local -DCMAKE_BUILD_TYPE=Release -DGTSAM_USE_SYSTEM_EIGEN=ON -DGTSAM_POSE3_EXPMAP=ON -DGTSAM_ROT3_EXPMAP=ON -DGTSAM_TANGENT_PREINTEGRATION=OFF
  sudo make -j $(nproc) install
  cd ../..
fi

# install opengv
if [ ! -d opengv ]; then
  git clone https://github.com/laurentkneip/opengv.git
  cd opengv
  mkdir build
  cd build
  cmake .. -DEIGEN_INCLUDE_DIR=/usr/include/eigen3 -DEIGEN_INCLUDE_DIRS=/usr/include/eigen3
  sudo make -j $(nproc) install
  cd ../..
fi

# install DBoW2
if [ ! -d DBoW2 ]; then
  git clone https://github.com/dorian3d/DBoW2.git
  cd DBoW2
  mkdir build
  cd build
  cmake ..
  sudo make -j $(nproc) install
  cd ../..
fi

# install kimera-rpgo
if [ ! -d Kimera-RPGO ]; then
  git clone https://github.com/MIT-SPARK/Kimera-RPGO.git
  cd Kimera-RPGO
  mkdir build
  cd build
  cmake ..
  sudo make -j $(nproc) install
  cd ../..
fi

# install kimera-vio
if [ ! -d Kimera-VIO ]; then
  #git clone git@github.com:MIT-SPARK/Kimera-VIO.git Kimera-VIO
  #above notation was causing some concerning looking prompts so back to the default method
  git clone https://github.com/MIT-SPARK/Kimera-VIO.git
  cd Kimera-VIO
  mkdir build
  cd build
  cmake ..
  sudo make -j $(nproc) install
  cd ../..
fi
