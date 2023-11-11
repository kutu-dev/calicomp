#!/usr/bin/env sh

if ! pgrep -x "slurp" > /dev/null; then
    SCREENSHOT_PATH=~/pictures/screenshots/$(date "+%d-%m-%Y-%H-%M-%S.png")
    grim -g "$(slurp -b '#000000a5' -c '#7aa2f7')" $SCREENSHOT_PATH
    ~/.config/hypr/scripts/system-notification.sh "Screenshot saved to $SCREENSHOT_PATH"
fi
