#!/bin/sh

# Load WireGuard configuration
#wg-quick up wg0

wg-quick up wgcf-profile
sleep 3
/usr/sbin/sockd -D -f /etc/wireguard/socks5.dante

# Keep the script running to keep the container alive
tail -f /dev/null
