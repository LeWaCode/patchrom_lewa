#!/bin/sh
#/* < DTS2012082703260 limeng 20120906 begin */
LOG_TAG="wifi_mt"
LOG_NAME="${0}:"

logi ()
{
    /system/bin/log -t $LOG_TAG -p i "$LOG_NAME $@"
}
#/* DTS2012082703260 limeng 20120906 end > */
mkdir /data/misc 01771 system misc
mkdir /data/misc/wifi 0770 wifi wifi
mkdir /data/misc/wifi/load 0775 system system
mkdir /data/misc/wifi/bin 0775 system system
/system/bin/wlan_detect
sleep 1
#/* < DTS2012082703260 limeng 20120906 begin */
logi "try to rmmod dhd"
rmmod dhd
if [ "$?" == "0" ]; then
    logi "rmmod dhd success"
else
    logi "rmmod dhd failed."
fi
sleep 1
logi "try to insmod dhd"
insmod /data/misc/wifi/load/dhd.ko devmode=test
if [ "$?" == "0" ]; then
    logi "insmod dhd success"
else
    logi "insmod dhd failed."
fi
#/* DTS2012082703260 limeng 20120906 end > */
ifconfig eth0 up
/data/misc/wifi/bin/wl band b
/data/misc/wifi/bin/wl mpc 0
/data/misc/wifi/bin/wl up
/data/misc/wifi/bin/wl out
/data/misc/wifi/bin/wl fqacurcy 6
#/*< DTS2012053103775  zhengdeguan 20120605 begin */
/data/misc/wifi/bin/wl phy_txpwrindex 60
#/* DTS2012053103775  zhengdeguan 20120605 end > */
                                                     