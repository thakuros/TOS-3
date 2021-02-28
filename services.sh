#!/bin/bash
#set -e
#=================================================================================
#Author: DemonKiller
#SPDX-License-Identifier: GPL-3.0
#Warning! DO NOT RUN THIS SCRIPT BLINDLY. MAKE CHANGES ACCORDING TO YOUR WORKFLOW. 
#RUN AT YOUR OWN RISK.
#=================================================================================

#General Instruction: Use a text editor to find and replace all instances of 
#'your-work-directory' to the path of your work directory. Make sure to copy 
#path till airootfs folder only.

#Misc Instruction: You can add services, for example bluetooth(bleuz) or 
#printing service(cups), samba, avahi, ssh, all here, manually.

echo "This Script will generate symlinks..."
echo "-------------------------------------"
echo "Running systemctl enable SDDM"
ln -sv /usr/lib/systemd/system/sddm.service your-work-directory/airootfs/etc/systemd/system/display-manager.service
echo "Running systemctl systemctl set-default graphical.target"
ln -sv /usr/lib/systemd/system/graphical.target your-work-directory/airootfs/etc/systemd/system/default.target
echo "Running systemctl enable NetworkManager"
ln -sv /usr/lib/systemd/system/NetworkManager.service your-work-directory/airootfs/etc/systemd/system/multi-user.target.wants
ln -sv /usr/lib/systemd/system/NetworkManager-wait-online.service your-work-directory/airootfs/etc/systemd/system/network-online.target.wants/
ln -sv /usr/lib/systemd/system/NetworkManager-dispatcher.service your-work-directory/airootfs/etc/systemd/system/dbus-org.freedesktop.nm-dispatcher.service

echo "D O N E!"
