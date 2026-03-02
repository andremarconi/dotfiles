# if in a terminal
if [ -t 0 ]; then
    # other users shouldn't be able to message by default
    mesg n

    # enable colours
    if [ `tput colors` -ge 8 ]; then
        command -v vivid >/dev/null 2>&1 && export LS_COLORS="$(vivid generate gruvbox-dark)"
    fi
fi
