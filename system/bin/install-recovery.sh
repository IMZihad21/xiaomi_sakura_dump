#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:29793614:4cce325ed9516eb7bdbb05c41cecb7343b545007; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:23567690:9d832003cbc604736c828e72a22d7e57a84e56d6 EMMC:/dev/block/bootdevice/by-name/recovery 4cce325ed9516eb7bdbb05c41cecb7343b545007 29793614 9d832003cbc604736c828e72a22d7e57a84e56d6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
