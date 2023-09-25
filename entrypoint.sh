#!/bin/sh

# Load WireGuard configuration
wg-quick up wg0
wg-quick up wgcf-profile

# Keep the script running to keep the container alive
tail -f /dev/null
