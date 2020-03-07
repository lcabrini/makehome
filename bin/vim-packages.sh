#! /bin/zsh

# Install and update vim packages.
# Author: Lorenzo Cabrini <lorenzo.cabrini@gmail.com>

# TODO: this should be a bit more flexible, but works for now
package_dir=$HOME/.vim/pack/default/start

test ! -d $package_dir && mkdir -p $package_dir
while read package; do
    package_name=$(basename $package)
    if [[ ! -d $package_dir/$package_name ]]; then
        cd $package_dir
        git clone $package.git
    else
        cd $package_dir/$package_name
        git pull
    fi
done <<EOF
git@github.com:GrAndSE/genie-script-vim-syntax
git@github.com:JuliaEditorSupport/julia-vim
git@github.com:udalov/kotlin-vim
git@github.com:itchyny/lightline.vim
git@github.com:nelsyeung/twig.vim
git@github.com:arrufat/vala.vim
git@github.com:rhysd/vim-crystal
git@github.com:elixir-lang/vim-elixir
git@github.com:cespare/vim-toml
EOF
