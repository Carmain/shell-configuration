# shell-configuration

A Simple shell configuration for macOS & Linux.

## What's inside ?

- Usefull aliases for common & git commands
- A simple configuration for `vim` and `nano` with syntax coloration
- A full configuration for ZSH including `oh-my-zsh` and some really nice packages

## Prerequisites

- Unix-like operating system (macOS or Linux)
- [ZSH](http://www.zsh.org) should be installed. If not pre-installed (`zsh --version` to confirm), check the following instruction here: [Installing ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
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
- [zsh-completions](https://github.com/zsh-users/zsh-completions) (extra ZSH completions)

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

### git commands with superpowers

#### `gckl`

Return on the last `git` branch visited

```bash
$ git:(develop) git checkout feature/cool-stuffs
$ git:(feature/cool-stuffs) gckl
$ git:(develop) # Do your stuff here
$ git:(develop) gckl
$ git:(feature/cool-stuffs) # Go back to the last branch visited
```

#### `sync_with_dev`

This function is used to :

- From a `git` branch go back to develop
- Pull develop
- Return into the last branch visited
- Merge develop into this branch

```bash
git:(feature/fake-branch) sync_with_dev
Switched to branch 'develop'
Your branch is up to date with 'origin/develop'.
Already up to date. # Or get all the modifications applied to your local branch
Switched to branch 'feature/fake-branch'
Already up to date. # Or get all the modifications applied to your local branch from develop
```

### Specific git & git flow aliases

#### `git`

**Rules :**

- All the commands start with `g`
- The commands have at least **three** letters and maximum **four**

| Git original command | Alias |
| -------------------- | ----- |
| git                  | g     |
| git add              | gad   |
| git add .            | gall  |
| git commit           | gci   |
| git commit --amend   | gcam  |
| git commit -m        | gcim  |
| git push             | gpu   |
| git status           | gst   |
| git diff             | gdi   |
| git cached           | gch   |
| git lg               | glg   |
| git br               | gbr   |
| git brm              | gbrm  |
| git bnm              | gbnm  |
| git checkout         | gck   |
| git checkout develop | gckd  |
| git checkout master  | gckm  |

_For some aliases like `brn` or `bnm`, see the section about the `.gitconfig` file_

#### `git flow`

**Rules :**

- All the commands start with `gf`
- The commands always have **four** letters (the first letter of each words)

| Git flow original command | Alias |
| ------------------------- | ----- |
| git flow                  | gf    |
| git flow feature start    | gffs  |
| git flow feature publish  | gffp  |
| git flow feature finish   | gfff  |
| git flow release start    | gfrs  |
| git flow release finish   | gfrf  |
| git flow hotfix start     | gfhs  |
| git flow hotfix finish    | gfhf  |

### git aliases from the `.gitconfig`

_Start the command with `git ...` or `g ...` (example : `git st`)_

| Original command                                                                                                  | Shortcut     |
| ----------------------------------------------------------------------------------------------------------------- | ------------ |
| add                                                                                                               | a            |
| add .                                                                                                             | all          |
| checkout -- .                                                                                                     | out-all      |
| commit                                                                                                            | ci           |
| commit --amend                                                                                                    | amend        |
| reset HEAD~                                                                                                       | soft-reset   |
| reset --hard HEAD~                                                                                                | hard-reset   |
| diff                                                                                                              | d            |
| diff --cached                                                                                                     | cached       |
| diff --stat --color                                                                                               | impact       |
| status                                                                                                            | st           |
| checkout                                                                                                          | ck           |
| branch                                                                                                            | br           |
| branch -D                                                                                                         | brm          |
| branch --no-merged                                                                                                | bnm          |
| log -p -M --follow --stat --                                                                                      | file-history |
| log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'               | lg           |
| log -p                                                                                                            | lgd          |
| log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --graph --all | tree         |
| for-each-ref --sort=-taggerdate --count=10 --format '%(tag) -- %(taggerdate:short)' refs/tags                     | tag-date     |

*Note :*

- The commands `git impact` can be used with a branch name as argument. For example : `git impact master`
- The commands `git file-history` must be used with a file as argument. For exame : `git file-history home.html`
