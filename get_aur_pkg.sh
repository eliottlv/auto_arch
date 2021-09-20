#!/usr/bin/env bash
# Installer paquets AUR.

rm -rf ./airootfs/var/lib/pacman/*

mkdir ./aur; cd ./aur

git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin; chmod -R 777 .; sudo -u archbuild makepkg -sr
repo-add ../../airootfs/var/lib/pacman/aur-repo.db.tar.gz yay-bin*.pkg.*
cp ./yay-bin*.pkg.* ../../airootfs/var/lib/pacman/
cd .. && rm -rf ./yay-bin

git clone https://aur.archlinux.org/hardened-malloc-git.git
cd hardened-malloc-git; chmod -R 777 .; sudo -u archbuild makepkg -sr
repo-add ../../airootfs/var/lib/pacman/aur-repo.db.tar.gz hardened-malloc-git*.pkg.*
cp ./hardened-malloc-git*.pkg.* ../../airootfs/var/lib/pacman/
cd .. && rm -rf ./hardened-malloc-git

git clone https://aur.archlinux.org/nwipe.git
cd nwipe; chmod -R 777 .; sudo -u archbuild makepkg -sr
repo-add ../../airootfs/var/lib/pacman/aur-repo.db.tar.gz nwipe*.pkg.*
cp ./nwipe*.pkg.* ../../airootfs/var/lib/pacman/
cd .. && rm -rf ./nwipe

git clone https://aur.archlinux.org/libkeccak.git
cd libkeccak; chmod -R 777 .; sudo -u archbuild makepkg -sr
repo-add ../../airootfs/var/lib/pacman/aur-repo.db.tar.gz libkeccak*.pkg.*
cp ./libkeccak*.pkg.* ../../airootfs/var/lib/pacman/
cd .. && rm -rf ./libkeccak

git clone https://aur.archlinux.org/sha3sum.git
cd sha3sum; chmod -R 777 .; sudo -u archbuild makepkg -sr
repo-add ../../airootfs/var/lib/pacman/aur-repo.db.tar.gz sha3sum*.pkg.*
cp ./sha3sum*.pkg.* ../../airootfs/var/lib/pacman/
cd .. && rm -rf ./sha3sum

rm ../airootfs/var/lib/pacman/*.old ./aur
