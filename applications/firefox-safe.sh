#!/bin/sh

# /etc/sudoers :: bar     ALL=(chrome) NOPASSWD: ALL
# adduser chrome -s /sbin/nologin
# usermod -aG pulse,pulse-access,audio chrome
# chmod o-rwx /home/bar -R
# chown chrome:bar /home/chrome -R
# chmod 770 /home/chrome -R

# systemctl stop pulseaudio
# systemctl disable pulseaudio
# systemctl mask pulseaudio

# DANGER your MIC is now OPEN (a bit more)! But I removed my MIC so OK!
# cat /etc/pulse/default.pa | grep cookie
# load-module module-native-protocol-unix auth-anonymous=1 auth-cookie-enabled=0
# nano /etc/pulse/default.pa 

sudo -u chrome killall firefox
sudo -u chrome rm -r -f /home/chrome/.mozilla
sudo -u chrome cp -u -r /home/chrome/.mozilla-default /home/chrome/.mozilla
sleep 1
xhost +
sudo -u chrome firefox
