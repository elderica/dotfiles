#!/bin/sh

echo 'Ensure to enable pkgfile'
sudo pacman -Syu
sudo pacman -S --needed pkgfile
sudo systemctl enable --now pkgfile-update.timer
