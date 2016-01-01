set nocompatible
let &runtimepath = printf('%s/vimfiles,%s,%s/vimfiles/after',$VIM,$VIMRUNTIME,$VIM)
let s:portable = expand('<sfile>:p:h')
let &runtimepath = printf('%s,%s,%s/after',s:portable,$runtimepath,s:portable)

inoremap jk <esc>
set number
set hlsearch

" Configure indentation
set expandtab
set tabstop=4       " tab is worth 4
set shiftwidth=4    " indent by 4

filetype plugin indent on
syntax on
set encoding=utf-8
let mapleader = ","
set spell spelllang=en_us
colorscheme evening
" Windows GUI Config
if has("gui_win32")
    set guifont=Consolas:h12:cANSI
endif
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/vim2hs.vim

execute pathogen#infect()
