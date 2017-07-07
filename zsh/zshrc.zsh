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
alias tree='tree -CF'

# History
setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY

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

# Git right prompt
setopt PROMPT_SUBST
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats '%F{3}%s%f: [%b]'
zstyle ':vcs_info:*' formats '%F{3}%s%f: [%b]'
zstyle ':vcs_info:*' enable git
precmd() { vcs_info }
RPROMPT='${vcs_info_msg_0_}'

watch=(notme)

# Completion system.
autoload -Uz compinit
compinit
