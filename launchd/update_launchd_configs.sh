#!/usr/bin/env bash

from_folder="$(dirname "$0")/configs/"
to_folder="$HOME/Library/LaunchAgents/"
cp -a "$from_folder" "$to_folder"
find "$to_folder" -type f -name "local.*.plist" -print0 | xargs -n 1 -0 launchctl unload
find "$to_folder" -type f -name "local.*.plist" -print0 | xargs -n 1 -0 launchctl load
