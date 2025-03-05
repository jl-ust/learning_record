#!/bin/bash

YELLOW='\033[0;33m'
RESET='\033[0m'

#安装curl
echo "installing curl..."

sudo apt-get update
sudo apt-get install curl


#下载git
echo "installing git..."

sudo apt install git
echo "git installed succesfully."


#安装rust
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env
rustup install nightly
rustup default nightly

#安装qemu
# 安装编译所需的依赖包
sudo apt install autoconf automake autotools-dev curl libmpc-dev libmpfr-dev libgmp-dev \
              gawk build-essential bison flex texinfo gperf libtool patchutils bc \
              zlib1g-dev libexpat-dev pkg-config  libglib2.0-dev libpixman-1-dev libsdl2-dev \
              git tmux python3 python3-pip ninja-build coreutils xautomation xdotool
wget https://download.qemu.org/qemu-7.0.0.tar.xz

echo 注:如果下载速度过慢可以使用我们提供的百度网盘链接:https://pan.baidu.com/s/1dykndFzY73nqkPL2QXs32Q

echo 提取码:jimc


tar xvJf qemu-7.0.0.tar.xz # 解压 


./qemu-7.0.0/build


# 此时我们可以确认 QEMU 的版本：
qemu-system-riscv64 --version
qemu-riscv64 --version




# 编译安装并配置 RISC-V 支持
cd qemu-7.0.0
./configure --target-list=riscv64-softmmu,riscv64-linux-user  # 如果要支持图形界面，可添加 " --enable-sdl" 参数
make -j$(nproc)



#安装node和npm
echo "安装 Node.js 和 npm"
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
 sudo apt-get install -y nodejs


 # 验证版本
 node --version
 npm --version







# 注：Sifive官网提供的工具链没有python支持，因此，如果想用ebpf side-stub，我们要自己编译一份工具链：(更多信息见[riscv-collab/riscv-gnu-toolchain#925](https://github.com/riscv-collab/riscv-gnu-toolchain/issues/925))
sudo apt install python-is-python3

sudo apt-get install autoconf automake autotools-dev curl python3 libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev ninja-build

sudo apt install python3-dev

git clone https://github.com/riscv/riscv-gnu-toolchain

cd riscv-gnu-toolchain

./configure --prefix=/opt/riscv

sudo make

