#!/bin/bash

# Removes shadow from plasma panels

while : 
do
    panels=($(xwininfo -root -tree | sed '/"Plasma": ("plasmashell" "plasmashell")/!d; s/^  *\([^ ]*\) .*/\1/g'))

    # Need a more reliable way to find when plasma is fully loaded 
    # rather than counting the panels  
    if [ "${#panels[@]}" -ge 11 ]; then
        for WID in "${panels[@]}"; do
            xprop -id $WID -remove _KDE_NET_WM_SHADOW
        done

        exit 0
    fi

    sleep .5
done
