# .bashrc
# Lorenzo Cabrini <lorenzo.cabrini@gmail.com>

# Exit if not an interactive session
[[ $- != *i* ]] && return

# TODO: this may need to be updated for some systems
[[ -f /etc/bashrc ]] && . /etc/bashrc
[[ -f /etc/bash.bashrc ]] && . /etc/bash.bashrc

PS1='$ '

[[ -d ~/.local/bin ]] && PATH=~/.local/bin:$PATH
[[ -d ~/go/bin ]] && PATH=~/go/bin:$PATH
[[ -d ~/bin ]] && PATH=~/bin:$PATH
EDITOR=emacs
VISUAL=$EDITOR
export EDITOR VISUAL

eval "$(dircolors -b)"

alias ls='ls --color=auto"
alias ll='ls -lh'
alias la='ls -A'
alias h=history
alias yd='youtube-dl -f best -o "%(title)s-%(id)s.%(ext)s"
