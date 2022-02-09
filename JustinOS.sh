#!/bin/bash
wget --output-document=back.jpg https://www.fanbolt.com/storage/2021/08/anime-iphone-wallpaper.jpg
gsettings set org.gnome.desktop.background picture-uri file:////home/john/back.jpg
mkdir /home/john/.icons
git clone https://github.com/EliverLara/candy-icons.git ./.icons/candy-icons
mkdir /home/john/.themes
git clone https://github.com/EliverLara/Nordic.git ./.themes/Nordic
gsettings set org.gnome.desktop.interface gtk-theme "Nordic"
gsettings set org.gnome.desktop.wm.preferences theme "Nordic"
gsettings set org.gnome.desktop.interface icon-theme candy-icons

su
apt-get -y install build-essential libssl-dev subversion checkinstall curl wget gnupg2
apt-get -y install nmap lynis fierce nikto skipfish wireshark john hashcat gbd radare2-cutter
apt-get -y install python3 python3-dev python3-pip git
pip3 install --upgrade git+https://github.com/arthaud/python3-pwntools.git
git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit
wget --output-document=back.jpg https://www.fanbolt.com/storage/2021/08/anime-iphone-wallpaper.jpg
wget --output-document=rice.sh https://raw.githubusercontent.com/Sworddafence/JustinOS/main/rice.sh

