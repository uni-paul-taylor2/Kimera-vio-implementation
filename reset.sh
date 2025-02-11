cd $HOME/cmake_repositories

for dir in *; do
  if [ -d "$dir" ]; then
    cd "$dir/build"
    #sudo make uninstall
    sudo ninja uninstall
    cd ../..
  fi
done

sudo apt purge -y libopencv-dev libopencv-contrib-dev libboost-all-dev build-essential libtbb-dev libgflags-dev libgoogle-glog-dev \
  unzip pkg-config libjpeg-dev libpng-dev libtiff-dev libvtk7-dev libgtk-3-dev libparmetis-dev libatlas-base-dev gfortran ffmpeg \
  python3-dev python3-numpy libeigen3-dev libmetis-dev xvfb python3 python3-pip python3-tk \
  libgl1-mesa-dev libwayland-dev libxkbcommon-dev wayland-protocols libegl1-mesa-dev \
  libc++-dev libepoxy-dev libglew-dev cmake g++ ninja-build libavcodec-dev libavformat-dev libswscale-dev \
  catch2 libavutil-dev libavdevice-dev libdc1394-dev libraw1394-dev libopenni-dev

cd ..
sudo rm -rf cmake_repositories
