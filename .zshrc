source $HOME/antigen.zsh

antigen use oh-my-zsh # Load the oh-my-zsh's library

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle django
antigen bundle web-search
antigen bundle pip
antigen bundle npm

antigen bundle zsh-users/zsh-syntax-highlighting  # Syntax highlighting bundle
antigen bundle zsh-users/zsh-autosuggestions      # Fish-like auto suggestions
antigen bundle zsh-users/zsh-completions          # Extra zsh completions

antigen theme robbyrussell  # Load the theme
antigen apply  # Tell antigen that you're done


alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"

alias ls="ls --color=auto"
alias ll="ls -l --color=auto"
alias lahl="ls -ahl --color=auto"
alias l.="ls -d .* --color=auto" # Show hidden fields

alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

alias h="history"

alias py="python"
alias pi="pip"
alias py3="python3"
alias pi3="pip3"

alias g="git"
alias gf="git flow"
