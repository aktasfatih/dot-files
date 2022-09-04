#!/bin/bash

## Homebrew Set-up Script
## ======================


# First make sure Homebrew is installed from: https://brew.sh


# Set up important taps
# ---------------------

brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions

brew install zsh
brew install coreutils
brew install gnu-sed
brew install git
brew install nano
brew install curl
brew install wget
brew install asdf
brew install watch
brew install httpie
brew install vifm # vim-like file manager
brew install safe-rm
brew install trash-cli
brew install tree
brew install unrar
brew install fzf
brew install ripgrep
brew install python
brew install z
brew install jq

# Install Apps
# ------------
brew install --cask spotify

#> Dev Apps
brew install --cask iterm2
brew install --cask postico
brew install --cask insomnia
brew install --cask visual-studio-code

# Quick Look Plugins
# ------------------

brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install quicklook-csv
brew cask install qlimagesize
# brew cask install suspicious-package
brew cask install provisionql
brew cask install qlcolorcode
brew cask install qlstephen


