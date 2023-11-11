#!/usr/bin/env sh

if ! pgrep -x "slurp" >/dev/null; then
	grim -g "$(slurp -b '#000000a5' -c '#7aa2f7')" - | wl-copy
	~/.config/hypr/scripts/system-notification.sh "Screenshot saved to clipboard"
fi
