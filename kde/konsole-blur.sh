if [ `echo $DISPLAY` ]; then
    konsoles=$(qdbus | grep konsole | cut -f 2 -d\ )

    if [ -n konsoles ]; then
        while read -r line; do
            xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id `qdbus $line /konsole/MainWindow_1 winId`
        done <<< "$konsoles"
    fi
fi
