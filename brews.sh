#!/usr/bin/env bash

workingdir=$( pwd )
brewsdir=$( pwd )/brew
specifier=$1

# get homebrew

echo "looking for homebrew."
command -v brew > /dev/null

if [ $? != 0 ]; then
  echo "installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "homebrew already installed; updating."
fi

brew update

echo "update complete; installing base from Brewfile."

# built-in command to install from Brewfile
brew bundle --file=$brewsdir/Brewfile

if [ $specifier == '' ]; then
  echo "no brewfile specifier - stopping with base"
  echo "specify work or home for machine-specific packages"
elif [ $specifier == 'work' ]; then
  echo "installing work packages"
  brew bundle --file=$brewsdir/Brewfile-work
elif [ $specifier == 'home' ]; then
  echo "installing home packages"
  brew bundle --file=$brewsdir/Brewfile-home
else
  echo "invalid location specifier - try work or home"
fi


