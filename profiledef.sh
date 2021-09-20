#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="arch-live-hardened"
iso_label="ARCH_$(date +%Y%m)"
iso_publisher="Eliott Lavier"
iso_application="Arch Linux Hardened Live/Rescue CD"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'zstd' '-b' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
)
