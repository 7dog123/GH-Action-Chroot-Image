#!/bin/bash
buildarch=arm64
apt install libext2fs2 debootstrap qemu-user-static wget
fallocate -l 1.8G sid.img
mkfs.ext4 sid.img
mkdir mnt
mount sid.img mnt/
cd mnt
debootstrap --arch=$buildarch sid . http://ftp.de.debian.org/debian
mount --bind /dev dev
mount --bind /proc proc
mount --bind /sys sys
ln -s /bin/bash bin/ash
umount dev
umount proc
umount sys
cd ..
umount mnt
gzip sid.img
mv sid.img.gz sid_arm64.img.gz
