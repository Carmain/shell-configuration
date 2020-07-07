source $HOME/antigen.zsh

antigen use oh-my-zsh # Load the oh-my-zsh's library

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle web-search
antigen bundle colored-man-pages

antigen bundle zsh-users/zsh-syntax-highlighting  # Syntax highlighting bundle
antigen bundle zsh-users/zsh-autosuggestions      # Fish-like auto suggestions
antigen bundle zsh-users/zsh-completions          # Extra zsh completions

antigen theme avit  # Load the theme
antigen apply  # Tell antigen that you're done

# Very specific case for a very specific need
in_debian_chroot() {
    if [ -f /etc/debian_chroot ]
    then 
        echo "%{$fg_bold[yellow]%}#$(cat /etc/debian_chroot)#%{$reset_color%} "
    else 
        echo ""
    fi
}

typeset +H _current_dir="%{$fg_bold[blue]%}%3~%{$reset_color%} "

PROMPT='
${_current_dir}$(git_prompt_info) $(git_prompt_status)
$(in_debian_chroot)%(?:%{$fg_bold[white]%}➜ :%{$fg_bold[red]%}➜ %{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_bold[yellow]%}⚑ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[yellow]%}» %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[white]%}§ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[white]%}◒ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_STASHED="%{$fg_bold[yellow]%}$ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg[blue]%}< %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[blue]%}> %{$reset_color%}"


color_param="-G"  # OSX and FreeBSD param for --color=auto
if [[ "$(uname)" == "Linux" ]]; then
  color_param="--color=auto"
fi

alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"

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
alias gad="git add"
alias gall="git add ."
alias gbnm="git bnm"
alias gbr="git br"
alias gbrm="git brm"
alias gcam="git commit --amend"
alias gch="git cached"
alias gci="git commit"
alias gcim="git commit -m"
alias gck="git checkout"
alias gckd="git checkout develop"
alias gckm="git checkout master"
alias gdi="git diff"
alias glg="git lg"
alias gst="git status"
alias gpu="git push"
alias grb="git rb"
alias grbi="git rbi"
alias grbm="git rbm"

alias gf="git flow"
alias gff="git flow feature"
alias gffs="git flow feature start"
alias gffp="git flow feature publish"
alias gfff="git flow feature finish"
alias gfh="git flow hotfix"
alias gfhs="git flow hotfix start"
alias gfhp="git flow hotfix publish"
alias gfhf="git flow hotfix finish"
alias gfr="git flow release"
alias gfrs="git flow release start"
alias gfrp="git flow release publish"
alias gfrf="git flow release finish"

# git checkout last
# This function is used to return on the last branch visited
gckl() {
  last_branch_visited=$(
    git reflog |  \
    grep -o "checkout: moving from .* to " | \
    sed -e 's/checkout: moving from //' -e 's/ to $//' | \
    head -1
  )

  git checkout $last_branch_visited
}

# This function is used to:
#  - From a branch go back to develop
#  - Pull develop
#  - Return into the last branch visited
#  - Merge develop into this branch
sync_with_dev() {
  git checkout develop
  git pull
  gckl
  git merge develop
}

# This function is used to:
#  - From a branch go back to develop
#  - Pull develop
#  - Return into the last branch visited
#  - Merge this branch into develop
#
# Usefull when you work with merge request to clean your local git
merge_feature() {
  git checkout develop
  git pull
  gckl
  git flow feature finish
}

# Shortcut for `git rebase -i HEAD~<X>` where `<X>` is passed as argument
grbx() {
  if [ $# -eq 0 ]; then
    echo "Error: missing number of commit you want to rebase"
    exit 1
  fi
  git rebase -i HEAD~$1
}