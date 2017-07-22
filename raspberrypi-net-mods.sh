#!/bin/sh
# Part of raspberrypi-net-mods https://github.com/RPi-Distro/raspberrypi-net-mods
#
# See LICENSE file for copyright and license details

VERSION_ID=$(cat /etc/os-realse | grep VERSION_ID)
if [ $VERSION_ID=8 ];then
/bin/mv /boot/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf
/bin/chmod 600 /etc/wpa_supplicant/wpa_supplicant.conf
fi

if [ $VERSION_ID=9 ];then
/bin/mv /boot/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant-wlan0.conf
/bin/chmod 600 /etc/wpa_supplicant/wpa_supplicant-wlan0.conf
systemctl enable wpa_supplicant@wlan0.service
fi
