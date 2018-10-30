# shell-configuration

A simple shell configuration compatible for macOS & Linux.

<!-- TOC -->

- [shell-configuration](#shell-configuration)
  - [What's inside ?](#whats-inside)
  - [Prerequisites](#prerequisites)
  - [How to get it ?](#how-to-get-it)
    - [Download & install the sources](#download--install-the-sources)
  - [Packages installed for `ZSH`](#packages-installed-for-zsh)
    - [The theme](#the-theme)
    - [Meaning of the symbols displayed inside a git repositiory](#meaning-of-the-symbols-displayed-inside-a-git-repositiory)
    - [Bundles from the default repo (robbyrussell's oh-my-zsh)](#bundles-from-the-default-repo-robbyrussells-oh-my-zsh)
    - [Awesome other bundles](#awesome-other-bundles)
  - [Shortcuts & aliases included](#shortcuts--aliases-included)
    - [git commands with superpowers](#git-commands-with-superpowers)
      - [`gckl`](#gckl)
      - [`sync_with_dev`](#syncwithdev)
    - [git aliases from `.gitconfig`](#git-aliases-from-gitconfig)
    - [Aliases included in `.zshrc`](#aliases-included-in-zshrc)
      - [git](#git)
      - [git flow](#git-flow)
      - [Miscellaneous](#miscellaneous)

<!-- /TOC -->

## What's inside ?

- Usefull aliases for common & git commands described and listed below
- A simple configuration for `vim` and `nano` with syntax coloration
- A sweet configuration for your teminal including `ZSH` with `oh-my-zsh` and some really nice packages (see below)

## Prerequisites

- Unix-like operating system (macOS or Linux)
- [ZSH](http://www.zsh.org) should be installed. If not pre-installed (`zsh --version` to confirm), check the following instruction here: [Installing ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
- `git`, `vim` and `curl` should be installed

## How to get it ?

### Download & install the sources

```bash
$ git clone https://github.com/Carmain/shell-configuration.git
$ cd shell-configuration
$ bash install.sh
```

After that, close all the shells instances and reopen a new one

If nothing changed, try the command `antigen reset` & reload the shell again. If the problem isn't fixed, delete the `.zcompdump` file (in `~`) and reload again.

## Packages installed for `ZSH`

### The theme

The project use the `avit` theme already included in oh-my-zsh because of the purity of the prompt & the nice signaletic for git.

- The prompt (▶) is grey by default and pass to red with elevated (root) privileges
- A symbol is shown if the last command failed (⍉)
- A compact view of the working directory wich show only the 3 last levels

### Meaning of the symbols displayed inside a git repositiory

| Symbol | Meaning                       |
| ------ | ----------------------------- |
| ✔      | Repository clean              |
| ✗      | Dirty working repository      |
| ✚      | Changes ready to be committed |
| ⚑      | File(s) tracked modified      |
| ✖      | File(s) tracked deleted       |
| ▴      | File(s) Renamed               |
| §      | Branch unmerged               |
| ◒      | File(s) untracked             |


### Bundles from the default repo (robbyrussell's oh-my-zsh)

- [web-search](https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins#web-search) (aliases for searching with Google, Wiki, Bing, YouTube and other popular services)
- colored-man-pages (color the man pages for a better reading)

### Awesome other bundles

- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) (syntax highlighting bundle)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) (fish-like auto suggestions)
- [zsh-completions](https://github.com/zsh-users/zsh-completions) (extra ZSH completions)

## Shortcuts & aliases included

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
$ git:(feature/fake-branch) sync_with_dev
Switched to branch 'develop'
Your branch is up to date with 'origin/develop'.
Already up to date. # Or get all the modifications applied to your local branch
Switched to branch 'feature/fake-branch'
Already up to date. # Or get all the modifications applied to your local branch from develop
```

### git aliases from `.gitconfig`

_Start the command with `git` or `g` (example : `git st`)_

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
| log --pretty=format:'* %Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'             | lg           |
| log -p                                                                                                            | lgd          |
| log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --graph --all | tree         |
| for-each-ref --sort=-taggerdate --count=10 --format '%(tag) -- %(taggerdate:short)' refs/tags                     | tag-date     |

**Note :**

- The command `git impact` can be used with a branch name as argument. For example : `git impact master`
- The command `git file-history` must be used with a file as argument. For exame : `git file-history home.html`

### Aliases included in `.zshrc`

#### git

**Rules :**

- All the aliases start with `g`
- The aliases have at least **three** letters and maximum **four**

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

#### git flow

**Rules :**

- All the aliases start with `gf`
- The aliases always have **one** letter by word (the first of each words)

| Git flow original command | Alias |
| ------------------------- | ----- |
| git flow                  | gf    |
| git flow feature          | gff   |
| git flow feature start    | gffs  |
| git flow feature publish  | gffp  |
| git flow feature finish   | gfff  |
| git flow release          | gfr   |
| git flow release start    | gfrs  |
| git flow release publish  | gfrp  |
| git flow release finish   | gfrf  |
| git flow hotfix           | gfh   |
| git flow hotfix start     | gfhs  |
| git flow hotfix publish   | gfhp  |
| git flow hotfix finish    | gfhf  |

#### Miscellaneous

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
