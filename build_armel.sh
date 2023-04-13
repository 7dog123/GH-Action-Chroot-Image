#!/bin/bash
buildarch=armel
apt install libext2fs2 debootstrap qemu-user-static wget
fallocate -l 1.8G bullseye.img
mkfs.ext4 bullseye.img
mkdir mnt
mount bullseye.img mnt/
cd mnt
debootstrap --arch=$buildarch bullseye . http://ftp.de.debian.org/debian
mount --bind /dev dev
mount --bind /proc proc
mount --bind /sys sys
ln -s /bin/bash bin/ash
umount dev
umount proc
umount sys
cd ..
umount mnt
gzip bullseye.img
mv bullseye.img.gz bullseye_armel.img.gz
