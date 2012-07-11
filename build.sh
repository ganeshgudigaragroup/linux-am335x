#!/bin/sh
#######################################################################
#		File: 		build.sh		
#	       Description : build script for kernel build
#	       Author : Ganesh Gudigara <ganesh@smartpathindia.com>	      
# This software absolutely with no warranty.
######################################################################


# add your toolchain path to the PATH env
export PATH=$PATH:/opt/linuxdevkit/bin



cd linux-am33x
case $1 in
help)
	echo "build.sh for building kernel"
	echo  "config - sets up calixto config"
	echo  "modules - <root path> - copies modules"
	echo  "install <boot path>- install path for kernel"
	echo  "uimage  - builds uimage"
	exit 0
	;;
	
config)
	make ARCH=arm CROSS_COMPILE=arm-arago-linux-gnueabi-   calixto_am335xevm_defconfig
	;;
uimage)
	make ARCH=arm CROSS_COMPILE=arm-arago-linux-gnueabi-  uImage;
	;;
modules)
	make ARCH=arm CROSS_COMPILE=arm-arago-linux-gnueabi-  
	make ARCH=arm CROSS_COMPILE=arm-arago-linux-gnueabi-   modules_install INSTALL_MOD_PATH=$2;
	;;
install)
	make ARCH=arm CROSS_COMPILE=arm-arago-linux-gnueabi-   INSTALL_PATH=$2 install;
	;;
esac





