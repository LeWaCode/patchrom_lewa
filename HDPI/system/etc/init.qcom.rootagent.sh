#!/system/bin/sh
# Copyright (c) 2012-2013, The Linux Foundation. All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above
#       copyright notice, this list of conditions and the following
#       disclaimer in the documentation and/or other materials provided
#       with the distribution.
#     * Neither the name of The Linux Foundation nor the names of its
#       contributors may be used to endorse or promote products derived
#       from this software without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
# ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
# OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
#set -x
agentvalue=`getprop persist.sys.agentvalue`

value=($agentvalue)
anrList=()
tombstonesList=()
action=${value[0]} # 0 based
doAction=""

# Autotrigger functions
ROOT_AUTOTRIGGER_PATH="/sdcard/logs/autotrigger"
function Preprocess(){
rm -r $ROOT_AUTOTRIGGER_PATH
mkdir -p $ROOT_AUTOTRIGGER_PATH
}
function Logcat(){
logcat -v time -d > $ROOT_AUTOTRIGGER_PATH/main.txt
logcat -b radio -v time -d > $ROOT_AUTOTRIGGER_PATH/radio.txt
logcat -b events -v time -d > $ROOT_AUTOTRIGGER_PATH/events.txt
}
function Dmesg(){
dmesg > $ROOT_AUTOTRIGGER_PATH/dmesg.txt;
}
function Dumpsys(){
dumpsys > $ROOT_AUTOTRIGGER_PATH/dumpsys.txt;
}
function Top(){
top -n 1 > $ROOT_AUTOTRIGGER_PATH/top.txt;
}

function FilterAnr(){
ANR_PATH="/data/anr"
BACKUP_FILE="/data/anr/backup"
TEMP_FILE="/data/anr/temp"
tempFile1=""
tempMidified1=""
tempFile2=""
tempMidified2=""
i=0;
k=0;

ls -l $ANR_PATH>$TEMP_FILE
while read line
do
    lineArr1=($line)
        if [ ${lineArr1[6]} != "temp" ]&&[ ${lineArr1[6]} != "backup" ];then
            tempFile1="$tempFile1 ${lineArr1[6]}"
            strTemp1=${lineArr1[4]}"-"${lineArr1[5]}
            tempMidified1="$tempMidified1 $strTemp1"
        fi
done <$TEMP_FILE
file1=($tempFile1)
dateModified1=($tempMidified1)

if [ -f "$BACKUP_FILE" ];then
    while read line
    do
        lineArr2=($line)
        tempFile2="$tempFile2 ${lineArr2[6]}"
        strTemp2=${lineArr2[4]}"-"${lineArr2[5]}
        tempMidified2="$tempMidified2 $strTemp2"
    done <$BACKUP_FILE
    file2=($tempFile2)
    dateModified2=($tempMidified2)
    for m in ${file1[@]};
    do
        j=0
        isExisted=0
        for n in ${file2[@]};
        do
            if [ $m = $n ];then
                isExisted=1
                if [ ${dateModified1[$i]} \> ${dateModified2[$j]} ];then
                    anrList[$k]=$m
                    let k=k+1
                fi
            fi
            let j=j+1
        done
            if [ $isExisted = 0 ];then
                anrList[$k]=$m
                let k=k+1
            fi
        let i=i+1
    done
else
    anrList=($tempFile1)
fi

rm $BACKUP_FILE
mv $TEMP_FILE $BACKUP_FILE
}

function FilterTombstones(){
TOMBSTONES_PATH="/data/tombstones"
BACKUP_FILE="/data/tombstones/backup"
TEMP_FILE="/data/tombstones/temp"
tempFile1=""
tempMidified1=""
tempFile2=""
tempMidified2=""
i=0;
k=0;

ls -l $TOMBSTONES_PATH>$TEMP_FILE
while read line
do
    lineArr1=($line)
    if [ ${lineArr1[6]} != "temp" ]&&[ ${lineArr1[6]} != "backup" ];then
        tempFile1="$tempFile1 ${lineArr1[6]}"
        strTemp1=${lineArr1[4]}"-"${lineArr1[5]}
        tempMidified1="$tempMidified1 $strTemp1"
    fi
done <$TEMP_FILE
file1=($tempFile1)
dateModified1=($tempMidified1)

if [ -f "$BACKUP_FILE" ];then
    while read line
    do
        lineArr2=($line)
        tempFile2="$tempFile2 ${lineArr2[6]}"
        strTemp2=${lineArr2[4]}"-"${lineArr2[5]}
        tempMidified2="$tempMidified2 $strTemp2"
        done <$BACKUP_FILE
    file2=($tempFile2)
    dateModified2=($tempMidified2)
    for m in ${file1[@]};
    do
        j=0
        isExisted=0
        for n in ${file2[@]};
        do
            if [ $m = $n ];then
            isExisted=1
                if [ ${dateModified1[$i]} \> ${dateModified2[$j]} ];then
                    tombstonesList[$k]=$m
                    let k=k+1
                fi
            fi
            let j=j+1
        done
            if [ $isExisted = 0 ];then
                tombstonesList[$k]=$m
                let k=k+1
            fi
        let i=i+1
    done
else
    tombstonesList=($tempFile1)
fi

rm $BACKUP_FILE
mv $TEMP_FILE $BACKUP_FILE
}

function ANR(){
ANR_PATH="/data/anr"
#ANR_LIST=`ls $ANR_PATH`
for file in ${anrList[@]};
do
    cat $ANR_PATH/$file> $ROOT_AUTOTRIGGER_PATH/$file
done
}
function Tombstone(){
TOMBSTONE_PATH="/data/tombstones"
#TOMBSTONE_LIST=`ls $TOMBSTONE_PATH`
for file in ${tombstonesList[@]};
do
    cat $TOMBSTONE_PATH/$file> $ROOT_AUTOTRIGGER_PATH/$file
done
}
function CatchAll(){
    Preprocess;Top;Dumpsys;Logcat;Dmesg;FilterAnr;ANR;FilterTombstones;Tombstone;
}
# only the action in our action list can be executed
case $action in
    "insmod")
        doAction=$agentvalue
        ;;
    "rmmod")
        doAction=$agentvalue
        ;;
    "echo")
        doAction=$agentvalue
        ;;
    "chmod")
        doAction=$agentvalue
        ;;
    "autotrigger")
        case ${value[1]} in
            "ApplicationCrash")
                CatchAll
                ;;
            "SystemRestart")
                CatchAll
                ;;
            "SystemTombstone")
                CatchAll
                ;;
            esac
        ;;

esac
echo $doAction

eval "$doAction"
# clear the action when done
setprop persist.sys.agentvalue 0
