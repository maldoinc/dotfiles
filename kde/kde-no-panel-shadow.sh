#!/bin/bash

# Removes shadow from plasma panels

while : 
do
    panels=($(xwininfo -root -tree | grep -P "\"Plasma\":.+plasmashell.+\d{4}x\d{2}" | awk '{ print $1 }'))

    if [ "${#panels[@]}" -gt 0 ]; then
        sleep 5
        for WID in "${panels[@]}"; do
            xprop -id $WID -remove _KDE_NET_WM_SHADOW
        done

        exit 0
    fi

    sleep .5
done
