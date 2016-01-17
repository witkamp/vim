inoremap jk <esc>
set number
set hlsearch
set expandtab

filetype plugin indent on
syntax on
set encoding=utf-8

set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/vim2hs.vim

execute pathogen#infect()
