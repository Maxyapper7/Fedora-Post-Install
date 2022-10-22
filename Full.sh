#!/bin/bash

dnf update -y
dnf upgrade -y

#Installes Packages
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub -y com.google.Chrome com.obsproject.Studio io.github.shiftey.Desktop net.davidotek.pupgui2 org.onlyoffice.desktopeditors us.zoom.Zoom org.videolan.VLC com.visualstudio.code org.polymc.PolyMC com.discordapp.Discord

dnf install steam lutris godot filezilla vim gnome-tweaks -y

#Removes preinstall Gnome stuff
dnf remove gnome-boxes gnome-calendar libreoffice-calc libreoffice-impress libreoffice-writer gnome-logs gnome-maps gnome-photos gnome-characters gnome-contacts gnome-weather gnome-tour gnome-clocks gnome-font-viewer -y

#Multimedia Codects
dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
dnf groupupdate sound-and-video -y

mkdir ~/.wallpaper
mv wallpaper.jpg ~/.wallpaper/1.jpg

#Addes alias
echo ### Aliases ### >> ~/.bashrc
echo # DNF >> ~/.bashrc
echo alias updt='sudo dnf update -y; sudo flatpak update -y' >> ~/.bashrc
echo alias dnfin='sudo dnf install' >> ~/.bashrc
echo alias dnfrm='sudo dnf remove' >> ~/.bashrc
echo alias dnfup='sudo dnf update' >> ~/.bashrc
echo  >> ~/.bashrc
echo # cd >> ~/.bashrc
echo alias .1='cd ..' >> ~/.bashrc
echo alias .2='cd ../..' >> ~/.bashrc
echo alias .3='cd ../../..' >> ~/.bashrc
echo alias .4='cd ../../../..' >> ~/.bashrc
echo alias .5='cd ../../../../..' >> ~/.bashrc
echo  >> ~/.bashrc
echo # Confirmations >> ~/.bashrc
echo alias mv='mv -i' >> ~/.bashrc
echo alias cp='cp -i' >> ~/.bashrc
echo alias rm='rm -i' >> ~/.bashrc
echo  >> ~/.bashrc
echo # Random >> ~/.bashrc
echo alias vi='vim' >> ~/.bashrc
echo alias ls='ls -lah --color=auto' >> ~/.bashrc
echo alias mkdir='mkdir -pv' >> ~/.bashrc

