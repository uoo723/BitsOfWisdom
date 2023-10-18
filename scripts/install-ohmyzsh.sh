#!/usr/bin/env bash

set -ex

# Install fzf
brew install fzf

# Install oh-my-zsh and plugins
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
zsh -c "git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" && \
zsh -c "git clone https://github.com/djui/alias-tips.git \
${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-tips" && \
zsh -c "git clone https://github.com/zsh-users/zsh-autosuggestions \
${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" && \
perl -pi -e "s/plugins\=\(git\)/plugins\=\(git zsh-syntax-highlighting zsh-autosuggestions alias-tips fzf docker docker-compose\)/g" ~/.zshrc
