#!/usr/bin/env bash

# Installer paquets AUR.

set -euo pipefail

rm -rf ./airootfs/var/lib/pacman/*

mkdir ./aur; cd ./aur

## Yay
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin; chmod -R 777 .; sudo -u archbuild makepkg -sr --noconfirm
repo-add ../../airootfs/var/lib/pacman/aur-repo.db.tar.gz yay-bin*.pkg.*
cp ./yay-bin*.pkg.* ../../airootfs/var/lib/pacman/
cd ..; rm -rf ./yay-bin

## Hardened-malloc
git clone https://aur.archlinux.org/hardened_malloc.git
cd hardened_malloc; chmod -R 777 .; sudo -u archbuild makepkg -sr --noconfirm --skippgpcheck
repo-add ../../airootfs/var/lib/pacman/aur-repo.db.tar.gz hardened_malloc*.pkg.*
cp ./hardened_malloc*.pkg.* ../../airootfs/var/lib/pacman/
cd ..; rm -rf ./hardened_malloc

## Nwipe
git clone https://aur.archlinux.org/nwipe.git
cd nwipe; chmod -R 777 .; sudo -u archbuild makepkg -sr --noconfirm
repo-add ../../airootfs/var/lib/pacman/aur-repo.db.tar.gz nwipe*.pkg.*
cp ./nwipe*.pkg.* ../../airootfs/var/lib/pacman/
cd ..; rm -rf ./nwipe

## Libkeccak
git clone https://aur.archlinux.org/libkeccak.git
cd libkeccak; chmod -R 777 .; sudo -u archbuild makepkg -sr --noconfirm
repo-add ../../airootfs/var/lib/pacman/aur-repo.db.tar.gz libkeccak*.pkg.*
cp ./libkeccak*.pkg.* ../../airootfs/var/lib/pacman/
cd ..; rm -rf ./libkeccak

## Sha3sum
git clone https://aur.archlinux.org/sha3sum.git
cd sha3sum; chmod -R 777 .; sudo -u archbuild makepkg -sr --noconfirm
repo-add ../../airootfs/var/lib/pacman/aur-repo.db.tar.gz sha3sum*.pkg.*
cp ./sha3sum*.pkg.* ../../airootfs/var/lib/pacman/
cd ..; rm -rf ./sha3sum

cd ..
rm -rf ./airootfs/var/lib/pacman/*.old ./aur
