#!/bin/bash
echo -n "Waiting for DFU Device";
while [ -z "`dfu-util -l | grep 'Found DFU'`" ]
do
    echo -n ".";
done
echo "Gotcha!";
dfu-util -a devicetree.dtb -D output/images/devicetree.dtb
dfu-util -R -a zImage -D output/images/zImage
dfu-util -a dtb -D output/images/devicetree.dtb
dfu-util -R -a kernel -D output/images/zImage
