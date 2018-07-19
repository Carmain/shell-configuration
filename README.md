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
| git                    | g     |
| git flow               | gf    |

### Git

_Start the command with `git ...` or `g ...` (example : `git st`)_

| Original command                                                                              | Shortcut |
| --------------------------------------------------------------------------------------------- | -------- |
| add                                                                                           | a        |
| add .                                                                                         | all      |
| checkout -- .                                                                                 | out-all  |
| commit                                                                                        | c        |
| commit --amend                                                                                | amend    |
| diff                                                                                          | d        |
| diff --cached                                                                                 | cached   |
| status                                                                                        | st       |
| checkout                                                                                      | co       |
| branch                                                                                        | br       |
| log --graph --oneline --all                                                                   | tree     |
| for-each-ref --sort=-taggerdate --count=10 --format '%(tag) -- %(taggerdate:short)' refs/tags | tag-date |
| diff --stat --color                                                                           | impact   |

Note :

- The command `git impact` can be used with a branch name as argument. For example : `git impact master`
