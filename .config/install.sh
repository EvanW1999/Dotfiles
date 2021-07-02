#!/bin/env bash
echo "Setting up configuration"
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
      echo "Installing packages for Ubuntu"
      sudo apt update -y

      if test ! $(which vim) || expr $(vim --version | head -1 | grep -o '[0-9]\.[0-9]') \< 8.2; then
          # Vim not installed or not appropriate version
          sudo add-apt-repository ppa:jonathonf/vim
          sudo apt install -y vim
      fi

      if test ! $(which zsh); then
        sudo apt-get install -y zsh
        chsh -s $(which zsh)
      fi

      if test ! $(which tmux); then
        sudo apt-get install -y tmux
      fi

      if test ! $(which node); then
        curl -fsSL https://deb.nodesource.com/setup_12.x | sudo -E bash -
        sudo apt-get install -y nodejs
      fi

      if test ! $(which rg); then
        sudo snap install ripgrep --classic
      fi

  fi


echo "Installing package managers"
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
