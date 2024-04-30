#!/bin/sh

apt-get update

export DEBIAN_FRONTEND=noninteractive

apt-get -y install \
    clang \
    clang-format \
    cmake \
    curl \
    git \
    libboost-all-dev \
    libeigen3-dev \
    python3-dev \
    qt5-qmake \
    qtbase5-dev \
    qtcreator

pip install apycula

mkdir /opt/src
cd /opt/src
git clone https://github.com/YosysHQ/nextpnr.git
