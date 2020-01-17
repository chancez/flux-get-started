#!/bin/bash

if ! test -f "/usr/local/bin/tk"; then
    wget "https://github.com/sh0rez/tanka/releases/download/v0.6.1/tk-linux-amd64" -O "/usr/local/bin/tk"
    chmod +x /usr/local/bin/tk
fi

tk show logging/environments/loki
