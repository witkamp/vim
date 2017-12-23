" Usage VIM=<path to this diretory> vim

" Change VIMRUNTIME to be relative to this directory
set nocompatible
let &runtimepath    = printf('%s/vimfiles,%s,%s/vimfiles/after',$VIM,$VIMRUNTIME,$VIM)
let s:portable      = expand('<sfile>:p:h')
let &runtimepath    = printf('%s,%s,%s/after',s:portable,$runtimepath,s:portable)

execute pathogen#infect()

" Key mappings
inoremap jk <esc>
let mapleader = ","

" Window movements
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Better Line-wrap movements
nnoremap j gj
nnoremap k gk

set number
set hlsearch
set incsearch

" Be smart
set smartcase
set smarttab
set smartindent

" Indentation
set expandtab       " spaces not tabs
set tabstop=4       " tab is worth 4
set shiftwidth=4    " indent by 4

set wildignore+=*.swp,.git
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest

set t_Co=256        " 256 terminal colors

set scrolloff=10
filetype plugin indent on
syntax on
set encoding=utf-8

colorscheme elflord
" Windows GUI Config
if has("gui_win32")
    set guifont=Consolas:h12:cANSI
    colorscheme solarized
endif

" MacVim GUI Config
if has("gui_macvim")
    set guifont=inconsolata:h16
    colorscheme solarized
    set visualbell
    set noerrorbells
endif


