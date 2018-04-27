" Personal vim configuration.
" Maintainer: Lorenzo Cabrini <lorenzo.cabrini@gmail.com>

" General options
set nocompatible
set backspace=indent,eol,start
set showcmd
set showmatch
set incsearch
set autowrite
set hidden
set history=50
set ruler

" Tabs and spaces
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

" Settings for color terminals and in the GUI.
if &t_Co > 2 || has("gui_running")
  syntax on
  set background=dark
  colorscheme elflord
  set hlsearch
endif

" Enable filetype plugins
if has("autocmd")
  filetype plugin indent on
endif

" If lightline is installed
if isdirectory($HOME . "/.vim/pack/plugins/start/lightline")
  set laststatus=2
  set noshowmode
endif
