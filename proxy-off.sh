#!/usr/bin/env bash

echo "Turning off http/https proxying"
networksetup -setwebproxystate Ethernet off
networksetup -setsecurewebproxystate Ethernet off
echo "Done"
