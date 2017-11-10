#!/bin/bash


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

# Automation of the gitconfig build
display "Git settings"
while true; do
  read -p "Do you wish to install the git configuration ? It will erase your initial .gitconfig file [y/n] " yn
  case $yn in
    [Yy]* )
      cp .gitconfig ~/.gitconfig

      read -p "Please give your username : " username
      read -p "Please give your email : " email
      git config --global user.name $username
      git config --global user.email $email

      break;;

    [Nn]* )
      break;;

    * )
      echo "Please answer yes or no.";;
  esac
done

printf "\n"

display "Moving the ZSH configuration"
cp .zshrc ~/.zshrc

display "Moving the nano configuration"
cp .nanorc ~/.nanorc

display "Moving the vim configuration"
cp .vimrc ~/.vimrc

printf "\n"

display "Installing all vim modules"

mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim  # Install Pathogen
cd ~/.vim/bundle

# install modules
git clone https://github.com/scrooloose/nerdtree  # The Nerd Tree
git clone https://github.com/kien/ctrlp.vim       # CTRLP.VIM

# install themes
git clone https://github.com/altercation/vim-colors-solarized  # Solarized
git clone https://github.com/w0ng/vim-hybrid                   # Hybrid
git clone https://github.com/jonathanfilip/vim-lucius          # Lucius
git clone https://github.com/sickill/vim-monokai               # Monokai
