call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'


call plug#end()







set nocompatible


syntax on
colorscheme onedark

set tabstop=2
set encoding=UTF-8

set softtabstop=2
set shiftwidth=2
set number
set hlsearch
set incsearch

set ruler
set nrformats=

set lazyredraw








"NERDTree config
autocmd vimenter * NERDTree
let NERDTreeWinPos=1







