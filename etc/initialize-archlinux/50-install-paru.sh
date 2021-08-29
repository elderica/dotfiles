#!/bin/sh

cd "$(mktemp -d)" || exit

curl -L https://aur.archlinux.org/cgit/aur.git/snapshot/paru.tar.gz | tar -zx

cd paru || exit

makepkg -sic --needed
