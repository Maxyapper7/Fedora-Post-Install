#!/bin/bash
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
grubby --update-kernel=ALL --args="module_blacklist=hid_sensor_hub"
dnf install powertop -y
systemctl enable powertop
dnf groupupdate core -y

#GPU
dnf groupinstall multimedia -y
dnf install intel-media-driver intel-gpu-tools -y


