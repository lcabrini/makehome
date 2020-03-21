#! /usr/bin/env zsh

# Install and update vim packages.
# Author: Lorenzo Cabrini <lorenzo.cabrini@gmail.com>

# Filetype plugins should typically go into the start directory
package_root=$HOME/.vim/pack/default/start

test ! -d $package_root && mkdir -p $package_root
while read package; do
    package_name=$(basename $package)
    if [[ ! -d $package_root/$package_name ]]; then
        cd $package_root
        git clone $package.git
    else
        cd $package_root/$package_name
        git pull
    fi
done <<EOF
git@github.com:GrAndSE/genie-script-vim-syntax
git@github.com:JuliaEditorSupport/julia-vim
git@github.com:udalov/kotlin-vim
git@github.com:nelsyeung/twig.vim
git@github.com:arrufat/vala.vim
git@github.com:rhysd/vim-crystal
git@github.com:elixir-lang/vim-elixir
git@github.com:cespare/vim-toml
EOF

# TODO: add packages that should go into opt, if needed.
