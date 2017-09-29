#!/usr/bin/env bash

# we need sudo to do network changes

read -p "Password for network config changes: " -s SUDO_PASS

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
