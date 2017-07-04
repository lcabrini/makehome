# Personal zsh configuration.
#
# This file is invoked by all instances of the shell.
#
# Maintainer: Lorenzo Cabrini <lorenzo.cabrini@gmail.com>

typeset -U path
path=(~/.local/bin $path)

if [[ -n $(whence vim) ]]; then
    export EDITOR=vim
else
    export EDITOR=vi
fi
export VISUAL=$EDITOR
