# GH-Action-Chroot-Image
Pre-made compressed Debian Bullseye chroot images, generated with Github Actions

Tested on Openwrt 19+
```
wget download link
gunzip -c downloadedfile bullseye.img
mkdir /mnt/bullseye
mount bullseye.img /mnt/bullseye/
mount --bind /dev /mnt/bullseye/dev/
mount --bind /proc /mnt/bullseye/proc/
mount --bind /sys /mnt/bullseye/sys
cp /etc/resolv.conf /mnt/bullseye/etc/resolv.conf
chroot /mnt/bullseye
```

To run Debian apps on start, simply install & use `screen` after `chroot` command in rc.local/rc.d/init.d service...
