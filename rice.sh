#!/bin/bash
mkdir -p ~/.icons
cd .icons
git clone https://github.com/EliverLara/candy-icons.git
cd ..
mkdir -p ~/.themes
cd .themes
git clone https://github.com/EliverLara/Nordic.git
cd ..
gsettings set org.gnome.desktop.interface gtk-theme "Nordic"
gsettings set org.gnome.desktop.wm.preferences theme "Nordic"
gsettings set org.gnome.desktop.interface icon-theme candy-icons
