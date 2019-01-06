call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


call plug#end()









set nocompatible
autocmd BufNewFile,BufRead *.vue set filetype=javascript.jsx








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
set nowrap
set foldmethod=syntax
set nofoldenable



let g:airline_theme='dark'
let g:polyglot_disabled = ['vue']






"NERDTree config
autocmd vimenter * NERDTree
let NERDTreeWinPos=1







