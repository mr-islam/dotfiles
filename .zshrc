# 256-bit color mode
export TERM="xterm-256color"

# Powerlevel9k
source  ~/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir root_indicator)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vi_mode time)

# Anaconda pytho
export PATH="/home/naved/anaconda3/bin:$PATH"

# Defaults
BROWSER=usr/bin/firefox
EDITOR=/usr/bin/vim

# shell options
setopt autocd # assume "cd" when a command is a directory
setopt sharehistory # Share the same history between all shells
setopt promptsubst # required for git plugin

# Fish-like syntax highlighting
source /home/naved/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/naved/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#should fix vim mode delay
export KEYTIMEOUT=1
