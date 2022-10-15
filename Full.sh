#!/bin/bash

dnf update -y
dnf upgrade -y

flatpak install flathub -y com.google.Chrome com.obsproject.Studio io.github.shiftey.Desktop net.davidotek.pupgui2 org.onlyoffice.desktopeditors us.zoom.Zoom org.videolan.VLC com.visualstudio.code org.polymc.PolyMC com.discordapp.Discord

dnf install steam lutris godot filezilla -y

dnf remove gnome-boxes gnome-calendar libreoffice-calc libreoffice-impress libreoffice-writer gnome-logs gnome-maps gnome-photos

dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
dnf groupupdate sound-and-video -y

mkdir ~/.wallpaper
mv wallpaper.jpg ~/.wallpaper/1.jpg

echo alias vi='vim' >> ~/.bashrc
echo alias update="'sudo dnf update -y; sudo flatpak update -y'" >> ~/.bashrc
