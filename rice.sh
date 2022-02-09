#!/bin/bash
apt-get -y install git
wget --output-document=back.jpg https://www.fanbolt.com/storage/2021/08/anime-iphone-wallpaper.jpg
gsettings set org.gnome.desktop.background picture-uri file:////home/john/back.jpg
mkdir /home/john/.icons
git clone https://github.com/EliverLara/candy-icons.git ./.icons/candy-icons
mkdir /home/john/.themes
git clone https://github.com/EliverLara/Nordic.git ./.themes/Nordic
gsettings set org.gnome.desktop.interface gtk-theme "Nordic"
gsettings set org.gnome.desktop.wm.preferences theme "Nordic"
gsettings set org.gnome.desktop.interface icon-theme candy-icons
