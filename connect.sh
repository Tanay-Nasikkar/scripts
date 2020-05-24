#!/bin/bash
# Connect to HackTheBox and OSCP Networks over VPN.

service="$1"

case $service in
    htb)
        sudo openvpn ~/vpn-creds/htb-alichtman.ovpn >/dev/null
        exit
        ;;
    oscp)
        sudo openvpn ~/vpn-creds/OS-80877-PWK.ovpn #>/dev/null
        exit
        ;;
    *)
        echo "Invalid service. [htb / oscp]"
        exit
        ;;
esac
