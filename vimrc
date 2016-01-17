" Usage VIM=<path to this diretory> vim

" Change VIMRUNTIME to be relative to this directory
set nocompatible
let &runtimepath = printf('%s/vimfiles,%s,%s/vimfiles/after',$VIM,$VIMRUNTIME,$VIM)
let s:portable = expand('<sfile>:p:h')
let &runtimepath = printf('%s,%s,%s/after',s:portable,$runtimepath,s:portable)

" Key mappings
inoremap jk <esc>
let mapleader = ","

set number
set hlsearch

" Indentation
set expandtab
set tabstop=4       " tab is worth 4
set shiftwidth=4    " indent by 4

filetype plugin indent on
syntax on
set encoding=utf-8

colorscheme elflord
" Windows GUI Config
if has("gui_win32")
    set guifont=Consolas:h12:cANSI
endif

execute pathogen#infect()

