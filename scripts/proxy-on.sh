#!/usr/bin/env bash

echo "Setting proxy to localhost:8080"
networksetup -setwebproxy Ethernet 127.0.0.1 8080
networksetup -setsecurewebproxy Ethernet 127.0.0.1 8080
echo "Turning on http/https proxying"
networksetup -setwebproxystate Ethernet on
networksetup -setsecurewebproxystate Ethernet on
echo "Done"
