#!/bin/bash

# Use this to pass an arguments to the latest WebStorm launcher in macOS
# in iTerm > Settings > Profiles > Advanced > Semantic History > Run coprocess
# path/to/run_webstorm_launcher.sh --line \2 \1
"$(grep -o '/.*/webstorm' /usr/local/bin/webstorm)" "$@"
