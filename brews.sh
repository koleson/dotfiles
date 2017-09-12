#!/usr/bin/env bash

brewcmd=$( command -v brew )

# get homebrew

if [ $brewcmd == '' ]; then 
  echo "installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "homebrew already installed; adding packages"
fi

# built-in command to install from Brewfile
brew bundle
