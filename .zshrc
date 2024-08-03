# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/Users/Silverhand/.oh-my-zsh"
# Path variables and configs
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/Users/silverhand/Library/Python/3.9/bin:$PATH"
export MAKEFLAGS="-j8"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="agnoster"
source /usr/local/opt/spaceship/spaceship.zsh
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto     # update automatically without asking
zstyle ':omz:update' mode reminder # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 7

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
#ZSH_CUSTOM=/Users/arkia/ColorScheme/ZSH_Theme

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions command-not-found safe-paste colored-man-pages sudo vscode auto-notify git-auto-fetch macos)
source $ZSH/oh-my-zsh.sh

# User configuration
source /Users/Silverhand/.config/ExtensionForTerminal/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
eval "$(fzf --zsh)"
alias zshrc="nvim ~/.zshrc"
alias zshrb="source ~/.zshrc"
alias dns="dscacheutil -flushcache"
# Complier shortcut
alias clang++="clang++ -Oz -pedantic-errors -Weverything -Wno-poison-system-directories -Wthread-safety -Wno-c++98-compat -std=c++20 -o program"
alias g++='g++ -o program'

# Remap the ls series command
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
# Macros for git fetch
alias update="echo 'performing update...' && brew update && brew upgrade && omz update && echo 'Cleaning up.....' && brew cleanup -s --prune=all && brew autoremove"
alias fetch="git fetch"
alias pull="git pull"
alias push="git add . && git commit -m 'update' && git merge && git push"
alias fresh="fetch && pull && push"
alias status="git status"

# Macros for fast jump folder
alias pic="cd $HOME/Pictures/壁纸/The-Wallpaper-Collection"
alias dev="cd $HOME/Developer/"
alias ecs="cd $HOME/Developer/SourceRepostory/UCDavisCodeSpace/"
alias markdown="cd '/Users/silverhand/Library/Mobile Documents/iCloud~md~obsidian/Documents/MarkDown Files'"
# Remapping the plugin shortcut
alias vim='nvim'
alias vi='nvim'
alias cat='bat'
alias ff='fzf'

# Init Macros and configs
eval $(thefuck --alias)
alias init="fastfetch && rm -rf ai_overlay_tmp && toilet Silverhand && dns && ls -l"

# Redirect Brew list to brew leaves.
brew() {
  if [[ $1 == "list" ]]; then
    command brew leaves "${@:2}"
  else
    command brew "$@"
  fi
}

# ZSH initiates
init
