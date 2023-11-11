#!/usr/bin/env sh

SCREENSHOT_PATH=~/pictures/screenshots/$(date "+%d-%m-%Y-%H-%M-%S.png")
grim $SCREENSHOT_PATH
~/.config/hypr/scripts/system-notification.sh "Screenshot saved to $SCREENSHOT_PATH"
