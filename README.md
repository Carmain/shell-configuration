# shell-configuration
A Simple shell configuration for macOS & Linux

## Prerequisites
 * Unix-like operating system (macOS or Linux)
 * [Zsh](http://www.zsh.org) should be installed. If not pre-installed (`zsh --version` to confirm), check the following instruction here: [Installing ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
 * `git` should be installed
 * `vim` should be installed
 * `curl` should be installed


## How to install the configuration ?

### Download & install the sources
 * Clone the repo
 * Execute the following command : `bash install.sh`

### Configure your git
```
$ git config --global user.name "John Doe"
$ git config --global user.email johndoe@example.com
```

## Shortcuts already inclued

### Git
*Start the command with `git ...` (example : `git st`)*

| Original command            | Shortcut |
|-----------------------------|----------|
| status                      | st       |
| checkout                    | co       |
| branch                      | br       |
| log --graph --oneline --all | tree     |
| commit --amend              | amend    |
| diff --cached               | cached   |
