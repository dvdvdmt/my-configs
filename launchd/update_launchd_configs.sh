#!/usr/bin/env bash

from_folder="$(dirname "$0")/configs/"
to_folder="$HOME/Library/LaunchAgents/"
cp -a "$from_folder" "$to_folder"
find "$HOME/Library/LaunchAgents/" -type f -name -print0 "local.*.plist" \
| xargs -0 -n 1 launchctl unload
find "$HOME/Library/LaunchAgents/" -type f -name -print0 "local.*.plist" \
| xargs -0 -n 1 launchctl load
