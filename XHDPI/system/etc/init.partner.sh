#!/system/bin/sh
# Copyright (c) 2012, Lewa Tek. All rights reserved.
#
#

LOG_TAG="init-partner"
PARTNER="Lewa"
PROPERTY="ro.sys.partner"

logi ()
{
  /system/bin/log -t $LOG_TAG -p i "$@"
  # echo $LOG_TAG ": $@"
}

set_partner ()
{
  setprop "$PROPERTY" "$PARTNER"
  logi "partner set as: $PARTNER"
}

EXIST_PARTNER=$(getprop $PROPERTY)

if [ -n "$EXIST_PARTNER" ];
then
    logi "existing parnter: "$EXIST_PARTNER
    exit 0
fi;

set_partner

exit 0
