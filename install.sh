#!/bin/bash
echo Hello, This is a fedora install
echo Are you on a framework?
read -p 'y or n: ' frame
echo Do you have a Nvidia Card? '('Note only works for current GeForce/Quadro/Tesla models')'
read -p 'y or n: ' nvidia
echo Do you want Full Or None?
read -p 'f, or n: ' packages

cd ~
sudo echo fastestmirror=True >> /etc/dnf/dnf.conf
sudo echo max_parallel_downloads=10 >> /etc/dnf/dnf.conf
sudo echo defaultyes=True >> /etc/dnf/dnf.conf
sudo echo keepcache=True >> /etc/dnf/dnf.conf

sudo dnf update -y

if [ $frame == 'y' ]
  then
  bash Framework.sh
fi

if [ $nvidia == 'y' ]
  then
  sudo bash Nvidia.sh
fi

if [ $packages == 'y' ]
  then
  sudo bash Full.sh
fi

echo Done with install, Would you like to restart
read -p 'y or n: ' restart
if [ $restart == 'y' ]
  then
  sudo restart
fi
if [ $restart == 'n' ]
  then
  echo Please Reboot Soon
fi
  
