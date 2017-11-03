#!/bin/bash

clear

# install vim
sudo apt-get install vim

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# go to directory
cd ~/.vim/bundle

# install modules
git clone https://github.com/scrooloose/nerdtree # The Nerd Tree
git clone https://github.com/kien/ctrlp.vim      # CTRLP.VIM

# install themes
git clone https://github.com/altercation/vim-colors-solariz # Solarized
git clone https://github.com/w0ng/vim-hybrid                # Hybrid
git clone https://github.com/jonathanfilip/vim-lucius       # Lucius
git clone https://github.com/sickill/vim-monokai            # Monokai
