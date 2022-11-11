#!/bin/bash

dnf update -y
dnf upgrade -y

#Installes Packages
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub -y com.google.Chrome com.obsproject.Studio io.github.shiftey.Desktop net.davidotek.pupgui2 org.onlyoffice.desktopeditors us.zoom.Zoom org.videolan.VLC com.visualstudio.code org.prismlauncher.PrismLauncher

dnf install steam lutris godot filezilla neovim gnome-tweaks btop -y

#Installs Luner Vim
LV_BRANCH='release-1.2/neovim-0.8' bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

#Removes preinstall Gnome stuff
dnf remove gnome-boxes gnome-calendar libreoffice-calc libreoffice-impress libreoffice-writer gnome-logs gnome-maps gnome-photos gnome-characters gnome-contacts gnome-weather gnome-tour gnome-clocks gnome-font-viewer -y

#Multimedia Codects
dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
dnf groupupdate sound-and-video -y

mkdir ~/.wallpaper
mv wallpaper.jpg ~/.wallpaper/1.jpg
echo The wallpaper was make by ThioJoe.art
### Wallpaper made by ThioJoe ###

#Addes alias

echo  >> ~/.bashrc
echo 'if [ -f ~/.bash_aliases ]; then' >> ~/.bashrc
echo     . ~/.bash_aliases >> ~/.bashrc
echo fi >> ~/.bashrc

cp .bash_aliases ~

# ### Aliases ###
# # DNF
# alias updt='sudo dnf update -y; sudo flatpak update -y'
# alias dnfin='sudo dnf install'
# alias dnfrm='sudo dnf remove'
# alias dnfup='sudo dnf update'
# 
# # cd
# alias .1='cd ..'
# alias .2='cd ../..'
# alias .3='cd ../../..'
# alias .4='cd ../../../..'
# alias .5='cd ../../../../..'
# 
# # Confirmations
# alias mv='mv -i'
# alias cp='cp -i'
# alias rm='rm -i'
# 
# # Random
# alias vi='vim'
# alias ls='ls -lah --color=auto'
# alias mkdir='mkdir -pv'

