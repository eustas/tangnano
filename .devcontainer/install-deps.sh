#!/bin/bash
set -x

apt-get update

export DEBIAN_FRONTEND=noninteractive

mkdir /opt/src

apt-get -y install \
    bison \
    build-essential \
    clang \
    clang-format \
    cmake \
    curl \
    flex \
    gawk \
    git \
    graphviz \
    libboost-all-dev \
    libeigen3-dev \
    libffi-dev \
    libreadline-dev \
    pkg-config \
    python3 \
    python3-dev \
    python3-pip \
    qt5-qmake \
    qtbase5-dev \
    qtcreator \
    tcl-dev \
    xdot \
    zlib1g-dev

pip3 install apycula

cd /opt/src
git clone https://github.com/YosysHQ/yosys.git
cd yosys
CC=clang CXX=clang++ make -j`nproc`
make install

cd /opt/src
git clone https://github.com/YosysHQ/nextpnr.git
cmake . -DARCH="himbaechel" -DHIMBAECHEL_GOWIN_DEVICES="all"
make -j`nproc`
make install
