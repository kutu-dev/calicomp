#!/usr/bin/env sh
set -x
window_title=$(hyprctl clients -j | jq -r '.[] | select(.title != "") | "\(.title)"' | tofi)
window_workspace_id=$(hyprctl clients -j | jq --arg window_title "$window_title" '.[] | select(.title == $window_title) | .workspace.id')

# Disable as quoting the variable leads to an unexpected behavior
# shellcheck disable=SC2086
hyprctl dispatch workspace "$(echo $window_workspace_id | cut -d ' ' -f1)"
