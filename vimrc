" Usage VIM=<path to this diretory> vim

" Change VIMRUNTIME to be relative to this directory
set nocompatible
let &runtimepath = printf('%s/vimfiles,%s,%s/vimfiles/after',$VIM,$VIMRUNTIME,$VIM)
let s:portable = expand('<sfile>:p:h')
let &runtimepath = printf('%s,%s,%s/after',s:portable,$runtimepath,s:portable)

execute pathogen#infect()

" Key mappings
inoremap jk <esc>
let mapleader = ","

" Window movements
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

set number
set hlsearch
set incsearch

" Indentation
set expandtab
set tabstop=4       " tab is worth 4
set shiftwidth=4    " indent by 4

set scrolloff=10
filetype plugin indent on
syntax on
set encoding=utf-8

colorscheme elflord
" Windows GUI Config
if has("gui_win32")
    set guifont=Consolas:h12:cANSI
endif


