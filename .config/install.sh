#!/bin/env bash
echo "Setting up configuration"
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
      echo "Installing packages for Ubuntu"
      sudo apt update -y

      if test ! $(which nvim); then
          echo "Installing neovim"
          sudo apt install -y neovim
      fi

      if test ! $(which zsh); then
        echo "Installing zsh"
        sudo apt install -y zsh
        chsh -s $(which zsh)
      fi

      if test ! $(which tmux); then
        echo "Installing tmux"
        sudo apt install -y tmux
      fi

      if test ! $(which node); then
        echo "Installing node"
        curl -fsSL https://deb.nodesource.com/setup_12.x | sudo -E bash -
        sudo apt install -y nodejs
      fi

      if test ! $(which rg); then
        echo "Installing ripgrep"
        sudo apt install -y ripgrep
      fi

      if test ! $(which bat); then
        echo "Installing bat"

        # Resolve conflict with ripgrep  (https://github.com/sharkdp/bat/issues/938)
        sudo sed -i '/\/usr\/.crates2.json/d' /var/lib/dpkg/info/ripgrep.list 
        sudo apt install -y bat
      fi

  fi


echo "Installing package managers"
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
