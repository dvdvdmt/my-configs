#!/usr/bin/env bash

eval karabiner_configs="~/.config/karabiner/assets/complex_modifications/"

find `dirname "$0"` -name '*.json' \
| xargs -I'{}' cp '{}' "$karabiner_configs"
