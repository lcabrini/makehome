# Personal zsh configuration.
#
# This file is sourced by interactive shells.
#
# Author: Lorenzo Cabrini <lorenzo.cabrini@gmail.com>

if [[ -d ~/Git ]]; then
    cdpath=(.. ~ ~/Git)
elif [[ -d ~/git ]]; then
    cdpath=(.. ~ ~/git)
fi

# History
setopt HIST_IGNORE_ALL_DUPS
#setopt SHARE_HISTORY
setopt APPEND_HISTORY INC_APPEND_HISTORY
export HISTSIZE=2000
export HISTFILE=$HOME/.history
export SAVEHIST=$HISTSIZE

# Remove duplicates from these arrays.
typeset -U path cdpath

# Bindkey -v is too troublesome.
bindkey -e

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
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' actionformats \
    '[%F{255}%s%f:%F{11}%b%f:%F{12}%c%F{3}%u%f:%F{14}%m - %F{1}%a%f]'
zstyle ':vcs_info:*' formats \
    '[%F{255}%s%f:%F{11}%b%f:%F{12}%c%F{3}%u%f:%F{14}%m%f]'
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked git-remote-status
zstyle ':vcs_info:*' enable git

+vi-git-untracked() {
    local wt=$(git rev-parse --is-inside-work-tree 2> /dev/null)
    local gl=$(git ls-files --other --directory --exclude-standard | sed q | \
        wc -l | tr -d ' ')

    if [[ $wt == 'true' && $gl -ge 1 ]]; then
        hook_com[unstaged]+='%F{1}?%f'
    fi
}

+vi-git-remote-status() {
    local ahead behind
    local -a gitstatus

    ahead=$(git rev-list ${hook_com[branch]}@{upstream}..HEAD 2> /dev/null \
        | wc -l)
    (( $ahead )) && gitstatus+=( "+${ahead}" )

    behind=$(git rev-list HEAD..${hook_com[branch]}@{upstream} 2> /dev/null \
        | wc -l)
    (( $behind )) && gitstatus+=( "-${behind}" )

    hook_com[misc]+=${(j:/:)gitstatus}
}

precmd() { vcs_info }
RPROMPT='${vcs_info_msg_0_}'

watch=(notme)

# Display directory contents after cd.
chpwd() ls

# Activate/deactive virtual environments
do_venv() {
    if [[ $PWD == $HOME/Git/* ]]; then
        if [[ -z $ZSH_VENV && -d .venv ]]; then
            ZSH_VENV=$PWD
            source $ZSH_VENV/.venv/bin/activate
        elif [[ -n $ZSH_VENV && $PWD != $ZSH_VENV* ]]; then
            deactivate
            unset ZSH_VENV
        fi
    elif [[ -n $ZSH_VENV ]]; then
        deactivate
        unset ZSH_VENV
    fi
}

autoload -U add-zsh-hook
add-zsh-hook chpwd do_venv

# Completion system.
autoload -Uz compinit
compinit
