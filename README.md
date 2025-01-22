# Kimera-vio-implementation
Basic Example Utilisation of Kimera VIO

## Setup
#### Install
This shows how to install from scratch with all the necessary pre-dependencies (Recommended Ubuntu 20 LTS)
```
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y gcc g++ build-essential libssl-dev libboost-all-dev
sudo snap install cmake --classic
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt install -y git
git clone https://github.com/uni-paul-taylor2/kimera-vio-implementation.git
```

#### Build
The rest, is taken up by `bash ./build.sh` when in the directory of this repository which was derived from [this installation doc](https://github.com/MIT-SPARK/Kimera-VIO/blob/master/docs/kimera_vio_install.md)

#### Demo
To demonstrate, in the directory of this repository, run `bash demo.sh` :D

#### Reset
To reset (in order to rebuild), in the directory of this repository run `bash reset.sh`
