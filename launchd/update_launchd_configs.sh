#!/usr/bin/env bash

from_folder="$(dirname "$0")/configs/"
to_folder="$HOME/Library/LaunchAgents"
cp -a "$from_folder" "$to_folder"
