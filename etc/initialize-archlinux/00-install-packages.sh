#!/bin/sh

echo 'Installing packages'

# shellcheck disable=SC2046
cd "$(dirname $0)" || exit

sudo pacman -Syu

sudo pacman -S --needed - < ../archlinux-packages
