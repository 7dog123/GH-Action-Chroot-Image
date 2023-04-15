# GH-Action-Chroot-Image
Pre-made compressed Debian Sid chroot images, generated with Github Actions

Tested on Openwrt 19+
```
wget download link
gunzip -c downloadedfile sid.img
mkdir /mnt/sid
mount sid.img /mnt/sid/
mount --bind /dev /mnt/sid/dev/
mount --bind /proc /mnt/sid/proc/
mount --bind /sys /mnt/sid/sys
cp /etc/resolv.conf /mnt/sid/etc/resolv.conf
chroot /mnt/sid
```

To run Debian apps on start, simply install & use `screen` after `chroot` command in rc.local/rc.d/init.d service...
