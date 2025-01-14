cd $HOME/cmake_repositories

if [ -d gtsam ] then;
  cd gtsam/build
  sudo make uninstall
  cd ../..
  sudo rm -rf gtsam
fi

if [ -d opencv ] then;
  cd opencv/build
  sudo make uninstall
  cd ../..
  sudo rm -rf opencv
fi

if [ -d opengv ] then;
  cd opengv/build
  sudo make uninstall
  cd ../..
  sudo rm -rf opengv
fi

if [ -d DBoW2 ] then;
  cd DBoW2/build
  sudo make uninstall
  cd ../..
  sudo rm -rf DBoW2
fi

if [ -d Kimera-RPGO ] then;
  cd Kimera-RPGO/build
  sudo make uninstall
  cd ../..
  sudo rm -rf Kimera-RPGO
fi

if [ -d Kimera-VIO ] then;
  cd Kimera-VIO/build
  sudo make uninstall
  cd ../..
  sudo rm -rf Kimera-VIO
fi

sudo apt purge -y libboost-all-dev build-essential libtbb-dev libgflags-dev libgoogle-glog-dev libavcodec-dev libavformat-dev libswscale-dev
sudo apt purge -y unzip pkg-config libjpeg-dev libpng-dev libtiff-dev libvtk7-dev libgtk-3-dev libparmetis-dev libatlas-base-dev gfortran
sudo apt purge -y ffmpeg python3-dev python3-numpy libeigen3-dev

cd ..
sudo rm -rf cmake_repositories
