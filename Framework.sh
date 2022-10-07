#!/bin/bash
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
sudo grubby --update-kernel=ALL --args="module_blacklist=hid_sensor_hub"
sudo dnf install powertop -y
sudo systemctl enable powertop
sudo dnf groupupdate core -y
sudo dnf install intel-media-driver intel-gpu-tools


