source $HOME/antigen.zsh

antigen use oh-my-zsh # Load the oh-my-zsh's library

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle django
antigen bundle web-search
antigen bundle pip
antigen bundle npm
antigen bundle colored-man-pages

antigen bundle zsh-users/zsh-syntax-highlighting  # Syntax highlighting bundle
antigen bundle zsh-users/zsh-autosuggestions      # Fish-like auto suggestions
antigen bundle zsh-users/zsh-completions          # Extra zsh completions

antigen theme robbyrussell  # Load the theme
antigen apply  # Tell antigen that you're done


alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"

color_param="-G"  # OSX and FreeBSD param for --color=auto

if [[ "$(uname)" == "Linux" ]]; then
  color_param="--color=auto"
fi

alias ls="ls $color_param"
alias ll="ls -l $color_param"
alias lahl="ls -ahl $color_param"
alias l.="ls -d .* $color_param"

alias grep="grep $color_param"
alias egrep="egrep $color_param"
alias fgrep="fgrep $color_param"

alias h="history"

alias py="python"
alias pi="pip"
alias py3="python3"
alias pi3="pip3"

alias g="git"
alias gst="git status"
alias gdi="git diff"
alias gch="git cached"
alias glg="git lg"
alias gcd="git checkout develop"
alias gcm="git checkout master"

alias gf="git flow"
alias gffs="git flow feature start"
alias gffp="git flow feature publish"
alias gfff="git flow feature finish"
alias gfrs="git flow release start"
alias gfrf="git flow release finish"


# git checkout last
# This function is used to return on the last branch visited
function gckl() {
  last_branch_visited=$(
    git reflog |  \
    grep -o "checkout: moving from .* to " | \
    sed -e 's/checkout: moving from //' -e 's/ to $//' | \
    head -1
  )

  git checkout $last_branch_visited
}

# This function is used to :
#  - From a branch go back to develop
#  - Pull develop
#  - Return into the last branch visited
#  - Merge develop into this branch
function sync_with_dev() {
  git checkout develop
  git pull
  gckl
  git merge develop
}
