#!/bin/bash

#------------------------------------------------------------------------
if [[ -z "$INTERFACE" ]] ; then
    INTERFACE="${BLOCK_INSTANCE:-wlp4s0}"
fi
#------------------------------------------------------------------------

# As per #36 -- It is transparent: e.g. if the machine has no battery or wireless
# connection (think desktop), the corresponding block should not be displayed.
[[ ! -d /sys/class/net/${INTERFACE}/wireless ]] && exit

# If the wifi interface exists but no connection is active, "down" shall be displayed.
if [[ "$(cat /sys/class/net/$INTERFACE/operstate)" = 'down' ]]; then
    echo "NotConnected"
    echo "NotConnected"
    echo "#FF0000"
    exit
fi

#------------------------------------------------------------------------
QUALITY=$(grep $INTERFACE /proc/net/wireless | awk '{ print int($3 * 100 / 70) }')
#------------------------------------------------------------------------ 

echo "  $QUALITY%" # full text
echo "  $QUALITY%" # short text

# color
if [[ $QUALITY -ge 80 ]]; then
    echo "#00FF00"
elif [[ $QUALITY -ge 60 ]]; then
    echo "#FFF600"
elif [[ $QUALITY -ge 40 ]]; then
    echo "#FFAE00"
else
    echo "#FF0000"
fi