#!/bin/bash

caddy validate ./Caddyfile

if test $? -eq 0; then
    sudo cp ./Caddyfile /etc/caddy/Caddyfile
    sudo systemctl restart caddy
fi
