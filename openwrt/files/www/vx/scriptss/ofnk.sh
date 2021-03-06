#!/bin/sh
. /usr/share/3ginfo/scripts/functions.sh

DEVICE=$(uci -q get 3ginfo.@3ginfo[0].device)
O=$(gcom -d $DEVICE -s /usr/share/3ginfo/scripts/ofnk.gcom | cut -f2 -d\")
if [ ! -z "$O" ]; then
	pdu2txt "$O"
else
	echo "Проблема оператора"
fi
