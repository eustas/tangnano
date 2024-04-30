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
