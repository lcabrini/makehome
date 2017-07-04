# Personal zsh configuration.
#
# This file is sourced by interactive shells.
#
# Author: Lorenzo Cabrini <lorenzo.cabrini@gmail.com>

cdpath=(.. ~ ~/Git)

# Aliases
alias ls='ls --color -F'
alias ll='ls -l'
alias la='ls -A'
alias h=history

# Remove duplicates from these arrays.
typeset -U path cdpath

# Set up colors for ls, grep, tree, etc.
eval "$(dircolors -b)"

if [[ -n $(whence lesspipe.sh) ]]; then
    eval "$(lesspipe.sh)"
fi

# Color support.
autoload -U colors
colors

PROMPT="%{$fg_bold[blue]%}%%%{$reset_color%} "

watch=(notme)

# Completion system.
autoload -Uz compinit
compinit
