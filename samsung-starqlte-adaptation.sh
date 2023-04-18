#!/bin/sh

# This script is not used for now
# Disable this service, so it only gets executed on first boot
systemctl disable xiaomi-onclite-adaptation.service

# Start phosh
[[ -e /usr/bin/phosh ]] && systemctl start phosh
