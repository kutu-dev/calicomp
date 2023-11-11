#!/usr/bin/env sh

hyprctl reload

if ! pgrep -x "waybar" >/dev/null; then
	waybar &
fi

if ! pgrep -x "swayidle" >/dev/null; then
	swayidle &
fi

~/.config/hypr/scripts/system-notification.sh "Gamemode disabled"
