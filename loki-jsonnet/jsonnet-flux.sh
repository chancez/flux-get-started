#!/bin/bash

# set -e

if ! test -f "/usr/local/bin/tk"; then
    wget "https://github.com/sh0rez/tanka/releases/download/v0.6.1/tk-linux-amd64" -O "/usr/local/bin/tk" >/dev/null 2>&1
    chmod +x /usr/local/bin/tk
fi

tk show --dangerous-allow-redirect logging/environments/loki
