#!/bin/bash
if [ `whoami` != root ]; then
    echo Please run this script as sudo
    exit
fi

echo Hello, This is a fedora install
echo Are you on a framework?
read -p 'y or n: ' frame
echo Do you have a Nvidia Card? '('Note only works for current GeForce/Quadro/Tesla models')'
read -p 'y or n: ' nvidia
echo Do you want Full Or None?
read -p 'f, or n: ' packages

echo fastestmirror=True >> /etc/dnf/dnf.conf
echo max_parallel_downloads=10 >> /etc/dnf/dnf.conf
echo defaultyes=True >> /etc/dnf/dnf.conf
echo keepcache=True >> /etc/dnf/dnf.conf

dnf update -y

dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

if [ $frame == 'y' ]
  then
  bash Framework.sh
fi

if [ $nvidia == 'y' ]
  then
  bash Nvidia.sh
fi

if [ $packages == 'f' ]
  then
  bash Full.sh
fi

dnf upgrade -y

echo Done with install, Would you like to restart
read -p 'y or n: ' restart
if [ $restart == 'y' ]
  then
  sudo reboot
fi
if [ $restart == 'n' ]
  then
  echo Please Reboot Soon
fi
  
