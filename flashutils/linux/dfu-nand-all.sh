#!/bin/bash
echo -n "Waiting for DFU Device";
while [ -z "`dfu-util -l | grep 'Found DFU'`" ]
do
    echo -n ".";
done
echo "Gotcha!";
dfu-util -R -a all -D output/images/sysimage-nand.img
# dfu-util -a u-boot -D output/images/u-boot-sunxi-with-nand-spl.bin
# dfu-util -a dtb -D output/images/devicetree.dtb
# dfu-util -a kernel -D output/images/zImage
# dfu-util -a rom -D output/images/rootfs.squashfs
