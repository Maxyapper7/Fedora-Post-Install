#!/bin/bash

dnf update -y
dnf upgrade -y

flatpak install flathub -y com.google.Chrome com.obsproject.Studio io.github.shiftey.Desktop net.lutris.Lutris net.davidotek.pupgui2 org.godotengine.Godot org.filezillaproject.Filezilla org.onlyoffice.desktopeditors us.zoom.Zoom com.valvesoftware.Steam com.github.muriloventuroso.easyssh org.videolan.VLC com.visualstudio.code org.polymc.PolyMC com.github.libresprite.LibreSprite org.ardour.Ardour com.github.iwalton3.jellyfin-media-player com.discordapp.Discord com.makemkv.MakeMKV

dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
dnf groupupdate sound-and-video -y

echo alias update="'sudo dnf update -y; sudo flatpak update -y'" >> ~/.bashrc
