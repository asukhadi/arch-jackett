#!/bin/bash

# exit script if return code != 0
set -e

# define pacman packages
pacman_packages="mono nuget git"

# install pre-reqs
pacman -Sy --noconfirm
pacman -S --needed $pacman_packages --noconfirm

# Build from source
source /root/build.sh

# cleanup
yes|pacman -Scc
rm -rf /usr/share/locale/*
rm -rf /usr/share/man/*
rm -rf /tmp/*
