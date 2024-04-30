#!/bin/bash
set -k
set -x

apt-get update

export DEBIAN_FRONTEND=noninteractive

apt-get -y install python3-dev
python3 -m ensurepip --upgrade
pip install apycula

apt-get -y install \
    clang \
    clang-format \
    cmake \
    curl \
    git \
    libboost-all-dev \
    libeigen3-dev \

#apt-get -y install \
#    qt5-qmake \
#    qtbase5-dev \
#    qtcreator

mkdir /opt/src
cd /opt/src
git clone https://github.com/YosysHQ/nextpnr.git
