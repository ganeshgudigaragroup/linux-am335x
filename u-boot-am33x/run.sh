#!/bin/bash
export PATH=$PATH:/srv/calixto/calixto/ti-sdk-am335x-evm/linux-devkit/bin
make ARCH=arm CROSS_COMPILE=arm-arago-linux-gnueabi- am335x_evm_config
make ARCH=arm CROSS_COMPILE=arm-arago-linux-gnueabi- 

