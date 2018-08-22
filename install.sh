#!/bin/bash

function display {
  printf "\033[34m\033[1m - $1 \033[0m \n"
}

BACKUP_PATH="$HOME/dotfiles-backup"


display "Backup your configuration"

while true; do
  read -p "Do you want to do a backup of your initial dotfiles ? [y/n] " yn
  case $yn in
    [Yy]* )
      if [ ! -d $BACKUP_PATH ]; then
        mkdir $BACKUP_PATH
      fi

      # Even if the script doesn't need to change the bashrc content, it may
      # be more easier for the user to find his file if he need to copy some
      # stuff inside the .zshrc later.
      dotfiles=( gitconfig vimrc nanorc zshrc bashrc )

      for i in "${dotfiles[@]}"
      do
        if [ -f ~/.$i ]; then
          mv ~/.$i $BACKUP_PATH/$i
          printf " - .$i backuped in $BACKUP_PATH\n"
        fi
      done

      break;;

    [Nn]* )
      break;;

    * )
      echo "Please answer yes or no.";;
  esac
done

printf "\n"


display "oh-my-zsh installation"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
printf "\n"


display "Antigen installation"
curl -L git.io/antigen > $HOME/antigen.zsh
printf "\n"


display "Vundle installation"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
printf "\n"


if [ $SHELL != "/bin/zsh" ]; then
  display "Changes the default shell for zsh"
  chsh -s /bin/zsh
  printf "\n"
fi


# Automation of the gitconfig build
display "Gitconfig configuration"

cp .gitconfig ~/.gitconfig
read -p "Please give your username : " username
read -p "Please give your email : " email
git config --global user.name $username
git config --global user.email $email
printf "\n"

printf "Please select your commit editor: \n"
options=("VIM" "Nano" "Leave by default")
select opt in "${options[@]}"
do
  case $opt in
    "VIM")
      git config --global core.editor "vim"
      break;;
    "Nano")
      git config --global core.editor "nano"
      break;;
    "Leave by default")
      break;;
    *) echo invalid option;;
  esac
done
printf "\n"

display "ZSH configuration"
cp .zshrc ~/.zshrc

display "Nano configuration"
cp .nanorc ~/.nanorc

display "Vim configuration"
cp .vimrc ~/.vimrc
vim +PluginInstall +qall
