#!/usr/bin/env bash

# we need sudo to do network changes

read -p "Password for network config changes: " -s SUDO_PASS

echo "disconnecting VPN"
osascript -e 'tell app "Viscosity"' -e 'if the state of the first connection is "Connected" then display dialog "You are connected to a VPN.  You will now be disconnected"' -e 'end tell' -e 'tell app "Viscosity" to disconnectall'

echo ""
echo "Setting proxy to localhost:8080"
echo "$SUDO_PASS" | sudo -S networksetup -setwebproxy Ethernet 127.0.0.1 8080
echo '$SUDO_PASS' | sudo -S networksetup -setsecurewebproxy Ethernet 127.0.0.1 8080

echo "Turning on http/https proxying"
echo '$SUDO_PASS' | sudo -S networksetup -setwebproxystate Ethernet on
echo '$SUDO_PASS' | sudo -S networksetup -setsecurewebproxystate Ethernet on

echo "Starting mitmweb"
mitmweb -q & echo $! > ~/.mitmpid
echo "Done"
