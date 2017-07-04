#!/bin/bash

while : 
do
    panels=($(xwininfo -root -tree | grep -P "\s{6}.+\"Plasma\":.+plasmashell.+" | awk '{ print $1 }'))

    if [ "${#panels[@]}" -gt 0 ]; then
        for WID in "${panels[@]}"; do
            xprop -id $WID -remove _KDE_NET_WM_SHADOW
        done

        exit 0
    fi

    sleep .5
done
