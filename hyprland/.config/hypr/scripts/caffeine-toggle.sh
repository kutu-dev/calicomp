#!/usr/bin/env sh

if pgrep -x "swayidle" >/dev/null; then
	pkill -x swayidle
	pkill -SIGRTMIN+1 waybar
	~/.config/hypr/scripts/system-notification.sh "Your PC is now caffeinated"
else
	swayidle &
	pkill -SIGRTMIN+1 waybar
	~/.config/hypr/scripts/system-notification.sh "Your PC is now decaffeinated"
fi
