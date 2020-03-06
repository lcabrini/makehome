#! /usr/bin/env zsh

autoload colors
colors

# COLORS
red=$fg_bold[red]
green=$fg_bold[green]
blue=$fg_bold[blue]
yellow=$fg_bold[yellow]
clear=$reset_color

print ${yellow}Making a happy home.${clear} 

[[ -d ~/bin ]] || mkdir ~/bin
(
    cd bin
    for script in *.zsh; do
        install $script ~/bin/${script:r}
    done
)
