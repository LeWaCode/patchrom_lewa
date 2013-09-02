#!/bin/sh
insmod /wifi/dhd.ko "firmware_path=/system/wifi/firmware_test.bin nvram_path=/system/wifi/nvram.txt"
wl band b
wl out
wl fqacurcy 6
