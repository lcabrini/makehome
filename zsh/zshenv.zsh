# Personal zsh configuration.
#
# This file is invoked by all instances of the shell.
#
# Maintainer: Lorenzo Cabrini <lorenzo.cabrini@gmail.com>

# We need to know which system we are on.
if [[ $(uname) == "Linux" ]]; then
    sys=linux
elif [[ $(uname) == "FreeBSD" ]]; then
    sys=bsd
fi

# Aliases
if [[ $sys == linux ]]; then
    alias ls='ls --color -F'
elif [[ $sys == bsd ]]; then
    alias ls='ls -FG'
fi
alias ll='ls -l'
alias la='ls -A'
alias h=history
alias tree='tree -CF'
alias gc='git commit'
alias gst='git status'
alias gp='git push'
alias gpl='git pull'
alias ga='git add'
alias gl='git log'
alias gd='git diff'
alias yd='youtube-dl -f best -o "%(title)s-%(id)s.%(ext)s"'
alias ta='task add'

export GOPATH=$HOME/.go
export GPODDER_HOME=~/.gPodder

typeset -U path
path=(~/bin ~/.go/bin $path)

typeset -U cdpath
cdpath=(~/src ~/org ~/prog)

if [[ -n $(whence vim) ]]; then
    export EDITOR=vim
else
    export EDITOR=vi
fi
export VISUAL=$EDITOR
