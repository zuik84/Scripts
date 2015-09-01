#!/bin/bash

if [ "`whoami`" != "root" ]; then
	echo "run as root"
	exit 1
fi

echo "AYY"

#TO-DO:
#-ORDER IN ORDER OF IMPORTANCE THE INSTALLS
#-FIND A WAY TO INSERT CONFIGS
#-COMPLETE TO-DO

echo "
# Testing repository - main, contrib branches
deb http://http.us.debian.org/debian testing main contrib
deb-src http://http.us.debian.org/debian testing main contrib


# Testing security updates repository
deb http://security.debian.org/ testing/updates main contrib 
deb-src http://security.debian.org/ testing/updates main contrib" > /etc/apt/sources.list

apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get install wicd-curses
apt-get install vim
apt-get install xorg
apt-get install xinit
apt-get install spectrwm
apt-get install xbindkeys
apt-get install mpv
apt-get install feh
apt-get install sudo
apt-get install dbus
apt-get install ranger
apt-get install mpd mpc ncmpcpp

`adduser zuik sudo`
echo "eh"

exit
