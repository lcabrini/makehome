#! /bin/bash

targets="10:4a:7d:15:64:d6 ac:7b:a1:d3:b6:02"
dirs="$HOME/org $HOME/.gnupg $HOME/.password-store"

# Make sure the ARP tables are refreshed
nmap -sn $(ip -br addr | awk '/UP/ { print $3 }') > /dev/null 2>&1

for target in $targets; do
    line=$(ip neigh | grep $target)
    if [[ -n $line ]]; then
	ip=$(echo $line | awk '{ print $1 }')
	for dir in $dirs; do
	    rsync -a $dir/ $ip:$dir
	done
    fi
done
