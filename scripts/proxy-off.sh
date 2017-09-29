#!/usr/bin/env bash

read -p "Password for network config changes: " -s SUDO_PASS

echo ""
echo "Turning off http/https proxying"
sudo networksetup -setwebproxystate Ethernet off
sudo networksetup -setsecurewebproxystate Ethernet off

MITM_PID=`cat ~/.mitmpid`
echo "Killing mitmweb (PID $MITM_PID)"
kill $MITM_PID

echo "Done"
