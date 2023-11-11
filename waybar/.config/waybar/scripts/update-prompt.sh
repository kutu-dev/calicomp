#!/usr/bin/env sh

figlet -f small "CALICOMP  Updater"
echo -n "Proceed with the system update? (Y/n) "
read answer
answer=$(echo $answer | tr "[:upper:]" "[:lower:]")

if [ "$answer" = "" ] || [ "$answer" = "y" ] || [ "$answer" = "yes" ]; then
    sudo xbps-install -Su
    flatpak update
fi

pkill -SIGRTMIN+2 -x waybar
