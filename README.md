# shell-configuration

A Simple shell configuration for macOS & Linux.

## What's inside ?

- Usefull aliases for common & git commands
- A simple configuration for `vim` and `nano` with syntax coloration
- A full configuration for ZSH including `oh-my-zsh` and some really nice packages

## Prerequisites

- Unix-like operating system (macOS or Linux)
- [Zsh](http://www.zsh.org) should be installed. If not pre-installed (`zsh --version` to confirm), check the following instruction here: [Installing ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
- `git`, `vim` and `curl` should be installed

## How to install the configuration ?

### Download & install the sources

```bash
$ git clone https://github.com/Carmain/shell-configuration.git
$ cd shell-configuration
$ bash install.sh
```

After that, close all the shells instances and reopen a new one

If nothing changed, try the command `antigen reset` & reload the shell again. If the problem isn't fixed, delete the `.zcompdump` file (in `~`) and reload again.

## Packages installed for `ZSH`

### Bundles from the default repo (robbyrussell's oh-my-zsh)

- [django](https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins#django)
- [web-search](https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins#web-search)
- [pip](https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins#pip)
- [npm](https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins#npm)

### Awesome other bundles

- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) (syntax highlighting bundle)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) (fish-like auto suggestions)
- [zsh-completions](https://github.com/zsh-users/zsh-completions) (extra zsh completions)

## Shortcuts & aliases already inclued

### ZSH aliases

| Original command       | Alias |
| ---------------------- | ----- |
| cd ../                 | ..    |
| cd ../../              | ...   |
| cd ../../../           | ....  |
| ls --color=auto        | ls    |
| ls -l --color=auto     | ll    |
| ls -ahl --color=auto   | lahl  |
| ls -d .\* --color=auto | l.    |
| grep --color=auto      | grep  |
| egrep --color=auto     | egrep |
| fgrep --color=auto     | fgrep |
| history                | h     |
| python                 | py    |
| pip                    | pi    |
| python3                | py3   |
| pip3                   | pi3   |

### Specific git & git flow aliases

| Git original command | Alias |
| -------------------- | ----- |
| git                  | g     |
| git status           | gst   |
| git diff             | gdi   |
| git cached           | gch   |
| git lg               | glg   |
| git checkout develop | gcd   |
| git checkout master  | gcm   |

| Git flow original command | Alias |
| ------------------------- | ----- |
| git flow                  | gf    |
| git flow feature start    | gffs  |
| git flow feature publish  | gffp  |
| git flow feature finish   | gfff  |
| git flow release start    | gfrs  |
| git flow release finish   | gfrf  |


### Git aliases from the `.gitconfig`

_Start the command with `git ...` or `g ...` (example : `git st`)_

| Original command                                                                                                  | Shortcut |
| ----------------------------------------------------------------------------------------------------------------- | -------- |
| add                                                                                                               | a        |
| add .                                                                                                             | all      |
| checkout -- .                                                                                                     | out-all  |
| commit                                                                                                            | ci       |
| commit --amend                                                                                                    | amend    |
| diff                                                                                                              | d        |
| diff --cached                                                                                                     | cached   |
| diff --stat --color                                                                                               | impact   |
| status                                                                                                            | st       |
| checkout                                                                                                          | ck       |
| branch                                                                                                            | br       |
| log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'               | lg       |
| log -p                                                                                                            | lgd      |
| log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --graph --all | tree     |
| for-each-ref --sort=-taggerdate --count=10 --format '%(tag) -- %(taggerdate:short)' refs/tags                     | tag-date |

Note :

- The command `git impact` can be used with a branch name as argument. For example : `git impact master`
