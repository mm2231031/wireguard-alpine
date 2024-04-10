#!/bin/sh

# Load WireGuard configuration
#wg-quick up wg0
#sleep 3
wg-quick up wgcf-profile
/usr/sbin/sockd -D -f /etc/wireguard/socks5.dante

# Keep the script running to keep the container alive
tail -f /dev/null
