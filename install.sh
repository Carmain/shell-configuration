#!/bin/bash

clear

function display {
    printf "\033[34m\033[1m - $1 \033[0m \n"
}

display "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
printf "\n"

display "Installing antigen"
curl -L git.io/antigen > $HOME/antigen.zsh
printf "\n"

display "Change the default shell for zsh"
chsh -s /bin/zsh
printf "\n"

display "Moving the git configuration"
cp .gitconfig ~/.gitconfig

display "Moving the ZSH configuration"
cp .zshrc ~/.zshrc

display "Moving the nano configuration"
cp .nanorc ~/.nanorc

display "Moving the vim configuration"
cp .vimrc ~/.vimrc

printf "\n"

display "Installing all vim modules"

mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim  # Installing Pathogen
cd ~/.vim/bundle

# install modules
git clone https://github.com/scrooloose/nerdtree # The Nerd Tree
git clone https://github.com/kien/ctrlp.vim      # CTRLP.VIM

# install themes
git clone https://github.com/altercation/vim-colors-solarized  # Solarized
git clone https://github.com/w0ng/vim-hybrid                   # Hybrid
git clone https://github.com/jonathanfilip/vim-lucius          # Lucius
git clone https://github.com/sickill/vim-monokai               # Monokai
