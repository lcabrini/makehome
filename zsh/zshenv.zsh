# Personal zsh configuration.
#
# This file is invoked by all instances of the shell.
#
# Maintainer: Lorenzo Cabrini <lorenzo.cabrini@gmail.com>

# We need to know which system we are on.
if [[ $(uname) == "Linux" ]]; then
    SYS=linux
elif [[ $(uname) == "FreeBSD" ]]; then
    SYS=bsd
fi
export SYS

export GOPATH=$HOME/.go
export GPODDER_HOME=~/.gPodder

typeset -U path
path=(~/bin ~/.go/bin $path)

typeset -U cdpath
cdpath=(~ ~/src ~/prog)

if [[ -n $(whence vim) ]]; then
    export EDITOR=vim
else
    export EDITOR=vi
fi
export VISUAL=$EDITOR
