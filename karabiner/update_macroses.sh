#!/usr/bin/env bash

karabiner_configs="$HOME/.config/karabiner/assets/complex_modifications/"

find "$(dirname "$0")" -name '*.json' -print0 \
| xargs -I'{}' cp '{}' "$karabiner_configs"
