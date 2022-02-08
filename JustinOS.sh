#!/bin/bash
wget -O - https://www.kismetwireless.net/repos/kismet-release.gpg.key | sudo apt-key add -
echo 'deb https://www.kismetwireless.net/repos/apt/release/bullseye bullseye main' | sudo tee /etc/apt/sources.list.d/kismet.list
sudo apt update
apt-get -y install build-essential libssl-dev subversion checkinstall curl wget gnupg2
apt-get -y install nmap lynis fierce nikto skipfish kismet wireshark john hashcat
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall
chmod +x msfinstall
./msfinstall
tasksel install desktop gnome-desktop
systemctl set-default graphical.target
reboot
