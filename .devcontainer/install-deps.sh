#!/bin/bash
set -x

apt-get update

export DEBIAN_FRONTEND=noninteractive

mkdir /opt/src

#apt-get -y install python3-dev python3-pip
#pip3 install apycula

apt-get -y install \
    bison \
    build-essential \
    clang \
    flex \
    gawk \
    git \
    graphviz \
    libboost-all-dev \
    libffi-dev \
    libreadline-dev \
    pkg-config \
    python3 \
    tcl-dev \
    xdot \
    zlib1g-dev

cd /opt/src
git clone https://github.com/YosysHQ/yosys.git
cd yosys
CC=clang CXX=clang++ make
make install

cd /opt/src
git clone https://github.com/YosysHQ/nextpnr.git

apt-get -y install \
    clang-format \
    cmake \
    curl \
    libeigen3-dev

#apt-get -y install \
#    qt5-qmake \
#    qtbase5-dev \
#    qtcreator

cd /opt/src
git clone https://github.com/YosysHQ/nextpnr.git
