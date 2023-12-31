# Shell Profile config

This is a list of my shell config file, including the zsh config and the VIM config.
The ZSH config is in .zshrc file. Prerequest plug in oh-my-zsh, exa, fzf, nvim, thefuck and bat. Please use homebrew to install those file.

The shell theme I use is the starship, go goole it, and make sure you're using the hack font or nerd font otherwise the symbol would display incorrectly.


## ZSHRC alias
Keep in mind that I modified the command binding so *READ THIS CAREFULLY*
```zsh
alias zshrc="nvim ~/.zshrc"
alias zshrb="source ~/.zshrc"
alias dns="dscacheutil -flushcache"
alias init="neofetch && toilet Sonoma && dns && exa -l"
# Complier shortcut
alias clang++="clang++ -Oz -pedantic-errors -Weverything -Wno-poison-system-directories -Wno-c++98-compat -std=c++20 -o program"
alias g++='g++ -o program'

# Remap the ls series command
alias ls="exa -l"
alias ll="ls"
alias la="exa -la"
alias pip="pip3"
alias python="python3"
# Macros for git fetch
alias update="echo 'performing update...' && brew update && brew upgrade && omz update && echo 'Cleaning up.....' && brew cleanup -s --prune=all && brew autorem
ove"
alias fetch="git fetch"
alias pull="git pull"
alias push="git add . && git commit -m 'update' && git merge && git push"
alias fresh="fetch && pull && push"
alias status="git status"

# Macros for fast jump folder
alias pic="cd $HOME/Pictures/The-Wallpaper-Collection"
alias dev="cd $HOME/Developer/"

# Remapping the plugin shortcut
alias fuck="fuck -y"
alias vim='nvim'
alias vi='nvim'
alias cat='bat'
alias ff='fzf'

### Redirect Brew list to brew leaves.
brew()
{
    if [[ $1 == "list" ]]; then
        command brew leaves "${@:2}"
    else
        command brew "$@"
    fi
}
```
## What's in .Config Folder
This folder contains the all the config file for the color scheme, ZSH extensions, theme, and nvim, you do not need to change it, it's being configured as
open the box and ready to use type.

