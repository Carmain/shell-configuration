#!/bin/bash

clear

function display {
    printf "\033[34m\033[1m - $1 \033[0m \n"
}

display "Moving .vimrc"
cp .vimrc ~/.vimrc

display "Moving .gitconfig"
cp .gitconfig ~/.gitconfig

display "Moving .zshrc"
cp .zshrc ~/.zshrc

display "Installing Pathogen"
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

display "Installing vim modules"
cd ~/.vim/bundle  # go to directory

# install modules
git clone https://github.com/scrooloose/nerdtree # The Nerd Tree
git clone https://github.com/kien/ctrlp.vim      # CTRLP.VIM

# install themes
git clone https://github.com/altercation/vim-colors-solarized  # Solarized
git clone https://github.com/w0ng/vim-hybrid                   # Hybrid
git clone https://github.com/jonathanfilip/vim-lucius          # Lucius
git clone https://github.com/sickill/vim-monokai               # Monokai
