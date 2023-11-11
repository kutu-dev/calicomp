#!/usr/bin/env sh

if [ "$(hyprctl -j getoption general:layout | jq -r ".str")" = "master" ]; then
	hyprctl keyword general:layout "dwindle"
	~/.config/hypr/scripts/system-notification.sh "Layout set to Dwindle"
else
	hyprctl keyword general:layout "master"
	~/.config/hypr/scripts/system-notification.sh "Layout set to Master"
fi
