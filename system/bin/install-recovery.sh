#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:37985614:1e58be6d99e9752303a5131af5129b4392bde596; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:32247114:6dc96a7b63bced8dfddae1e9c27705ab514da8a0 EMMC:/dev/block/bootdevice/by-name/recovery 1e58be6d99e9752303a5131af5129b4392bde596 37985614 6dc96a7b63bced8dfddae1e9c27705ab514da8a0:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
