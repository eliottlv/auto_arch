#!/usr/bin/env bash

# Installer paquets AUR.

set -euo pipefail

rm -rf ./airootfs/var/lib/pacman/*
cd ./aur

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
cd libkeccak; chmod -R 777 .; sudo -u archbuild makepkg -sr --noconfirm --nocheck
repo-add ../../airootfs/var/lib/pacman/aur-repo.db.tar.gz libkeccak*.pkg.*
cp ./libkeccak*.pkg.* ../../airootfs/var/lib/pacman/
cd ..; rm -rf ./libkeccak

## Sha3sum
git clone https://aur.archlinux.org/sha3sum.git
cd sha3sum; chmod -R 777 .; sudo -u archbuild makepkg -sr --noconfirm
repo-add ../../airootfs/var/lib/pacman/aur-repo.db.tar.gz sha3sum*.pkg.*
cp ./sha3sum*.pkg.* ../../airootfs/var/lib/pacman/
cd ..; rm -rf ./sha3sum

## Dirbuster
git clone https://aur.archlinux.org/dirbuster.git
cd dirbuster; chmod -R 777 .; sudo -u archbuild makepkg -sr --noconfirm
repo-add ../../airootfs/var/lib/pacman/aur-repo.db.tar.gz dirbuster*.pkg.*
cp ./dirbuster*.pkg.* ../../airootfs/var/lib/pacman/
cd ..; rm -rf ./dirbuster

## Dirbuster wordlists
git clone https://aur.archlinux.org/dirbuster-wordlists.git
cd dirbuster-wordlists; chmod -R 777 .; sudo -u archbuild makepkg -sr --noconfirm
repo-add ../../airootfs/var/lib/pacman/aur-repo.db.tar.gz dirbuster-wordlists*.pkg.*
cp ./dirbuster-wordlists*.pkg.* ../../airootfs/var/lib/pacman/
cd ..; rm -rf ./dirbuster-wordlists

## Age
git clone https://aur.archlinux.org/age.git
cd age; chmod -R 777 .; sudo -u archbuild makepkg -sr --noconfirm
repo-add ../../airootfs/var/lib/pacman/aur-repo.db.tar.gz age*.pkg.*
cp ./age*.pkg.* ../../airootfs/var/lib/pacman/
cd ..; rm -rf ./age

## yt-dlp
git clone https://aur.archlinux.org/yt-dlp.git
cd yt-dlp; chmod -R 777 .; sudo -u archbuild makepkg -sr --noconfirm
repo-add ../../airootfs/var/lib/pacman/aur-repo.db.tar.gz yt-dlp*.pkg.*
cp ./yt-dlp*.pkg.* ../../airootfs/var/lib/pacman/
cd ..; rm -rf ./yt-dlp

cd ..
rm -rf ./airootfs/var/lib/pacman/*.old ./aur
