# ORB_SLAM3 Implementation
Basic vSLAM Implementation using ORB_SLAM3

## Setup
#### Install 
Copy the following snippet into an `install.sh` file and run it (`bash install.sh`)<br>
This shows how to install from scratch with all the necessary pre-dependencies before cloning the repository<br>
**Recommended Ubuntu 22 LTS**
```
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y build-essential libssl-dev libboost-all-dev curl
sudo snap install cmake --classic

# optional build g++-14 start
#sudo apt install build-essential
#sudo apt install libmpfr-dev libgmp3-dev libmpc-dev -y
#wget http://ftp.gnu.org/gnu/gcc/gcc-14.1.0/gcc-14.1.0.tar.gz
#tar -xf gcc-14.1.0.tar.gz
#cd gcc-14.1.0
#./configure -v --build=x86_64-linux-gnu --host=x86_64-linux-gnu --target=x86_64-linux-gnu --prefix=/usr/local/gcc-14.1.0 --enable-checking=release --enable-languages=c,c++ --disable-multilib --program-suffix=-14.1.0
#make -j $(nproc)
#sudo make -j $(nproc) install
#cd ..
# optional build g++-14 stop

sudo add-apt-repository -y ppa:git-core/ppa
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt install -y git git-lfs
git lfs install

git clone https://github.com/uni-paul-taylor2/orb_slam3_implementation.git

# Build Step Below
cd orb_slam3_implementation
git lfs pull
bash build.sh
cd ..
```

#### Build
If the build step was omitted, the rest, is taken up by `bash build.sh` when in the directory of this repository

#### Demo
To demonstrate, in the directory of this repository, run `bash demo.sh` :D

#### Reset
To reset (in order to rebuild), in the directory of this repository run `bash reset.sh`
