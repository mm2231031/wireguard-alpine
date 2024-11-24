#!/bin/sh
# Start wgcf profile
wg-quick up wgcf-profile
sleep 3
# Start SOCKS5 proxy
/usr/sbin/sockd -D -f /etc/wireguard/socks5.dante

# Keep the script running to keep the container alive
tail -f /dev/null
