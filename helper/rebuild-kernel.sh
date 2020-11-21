#!/bin/bash
rm ./output/images/*.dtb
make linux-clean-for-rebuild
make linux -j8
