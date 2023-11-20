#!/bin/bash

echo updating pkg
sudo apt update
sudo apt upgrade -y

echo installing tailscale
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/lunar.noarmor.gpg | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg >/dev/null
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/lunar.tailscale-keyring.list | sudo tee /etc/apt/sources.list.d/tailscale.list

sudo apt-get update
sudo apt-get install tailscale -y

echo setting up tailscale
sudo tailscale up --authkey $1

sudo tailscale ip -4