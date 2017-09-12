#!/usr/bin/env bash

brewcmd=$( command -v brew )

echo "brewcmd:"
echo $brewcmd

if [ $brewcmd == '' ]; then 
  echo "installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "homebrew already installed; adding packages"
fi

brew install carthage ffmpeg gnupg imagemagick ncdu nmap
brew cask install atom etcher keybase
