#!/usr/bin/env bash

brewcmd=$( command -v brew )
workingdir=$( pwd )
brewsdir=$( pwd )/brew
specifier=$1

# get homebrew

if [ $brewcmd == '' ]; then
  echo "installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "homebrew already installed; adding packages"
fi

# built-in command to install from Brewfile
brew bundle --file=$brewsdir/Brewfile

if [ '$1' == '' ]; then
  echo "no brewfile specifier - stopping with base"
  echo "specify work or home for machine-specific packages"
elif [ $1 == 'work' ]; then
  echo "installing work packages"
  brew bundle --file=$brewsdir/Brewfile-work
elif [ $1 == 'home' ]; then
  echo "installing home packages"
  brew bundle --file=$brewsdir/Brewfile-home
else
  echo "invalid location specifier - try work or home"
fi
