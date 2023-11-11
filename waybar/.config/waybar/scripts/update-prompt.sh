#!/usr/bin/env sh

figlet -f small "CALICOMP  Updater"
printf "%s" "Proceed with the system update? (Y/n) "
read -r answer
answer=$(printf "%s" "$answer" | tr "[:upper:]" "[:lower:]")

if [ "$answer" = "" ] || [ "$answer" = "y" ] || [ "$answer" = "yes" ]; then
	sudo xbps-install -Su
	flatpak update
fi

pkill -SIGRTMIN+2 -x waybar
