# .bashrc
# Lorenzo Cabrini <lorenzo.cabrini@gmail.com>

# Exit if not an interactive session
[[ $- != *i* ]] && return

# TODO: this may need to be updated
[[ -f /etc/bashrc ]] && . /etc/bashrc
[[ -f /etc/bash.bashrc ]] && . /etc/bash.bashrc

PS1='$ '
[[ -d ~/.local/bin ]] && PATH=~/.local/bin:$PATH
[[ -d ~/go/bin ]] && PATH=~/go/bin:$PATH
[[ -d ~/bin ]] && PATH=~/bin:$PATH
EDITOR="emacsclient -a "" -t"
VISUAL=$EDITOR
export EDITOR VISUAL

eval "$(dircolors -b)"

alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -A'
alias tree='tree -CF'
alias df='df -h'
alias h=history
alias m=make
alias gb='go build'
alias gst='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log'
alias gd='git diff'
alias yd='youtube-dlc -f best -o "%(title)s-%(id)s.%(ext)s"'
#alias pm='python manage.py'

venv() {
    wd=$PWD
    old_VENV=$VENV
    VENV=

    while [[ $wd/ = $HOME/* ]]; do
	if [[ -d $wd/.venv ]]; then
	    VENV=$wd/.venv
	    break
	fi
	wd=$(dirname $wd)
    done

    if [[ -z $old_VENV && -n $VENV ]]; then
	. $VENV/bin/activate
    elif [[ -n $old_VENV && -z $VENV ]]; then
	deactivate
    elif [[ $old_VENV != $VENV ]]; then
	deactivate
	. $VENV/bin/activate
    fi
    
    unset wd old_VENV 
}
export VENV=

django_aliases() {
    if [[ -f manage.py ]]; then
	alias pm='python manage.py'
	alias pma='python manage.py startapp'
	alias pmm='python manage.py makemigrations && python manage.py migrate'
	alias pmr='python manage.py runserver'
    else
	unalias pm 2> /dev/null
	unalias pma 2> /dev/null
	unalias pmm 2> /dev/null
	unalias pmr 2> /dev/null
    fi
}

chpwd() {
    venv
    django_aliases
}
chpwd

cd() { builtin cd "$@" && chpwd; }
pushd() { builtin cd "$@" && chpwd; }
popd() { builtin popd "$@" && chpwd; }

command -v fortune > /dev/null 2>&1 && fortune
