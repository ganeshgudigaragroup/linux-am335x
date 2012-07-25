#!/bin/sh
export PATH=$PATH:/opt/linuxdevkit/bin
make ARCH=arm CROSS_COMPILE=arm-arago-linux-gnueabi-  
make ARCH=arm CROSS_COMPILE=arm-arago-linux-gnueabi-   uImage
#make ARCH=arm CROSS_COMPILE=arm-arago-linux-gnueabi-   modules_install

#make ARCH=arm CROSS_COMPILE=arm-arago-linux-gnueabi-   INSTALL_PATH=/media/dists/smartpathindia-build/kernel/boot INSTALL_MOD_PATH=/media/dists/smartpathindia-build/kernel modules_install
#make ARCH=arm CROSS_COMPILE=arm-arago-linux-gnueabi-   INSTALL_PATH=/media/dists/smartpathindia-build/kernel/boot INSTALL_MOD_PATH=/media/dists/smartpathindia-build/kernel  install



