set nocompatible


"set term=ansi
syntax on



set tabstop=2

set softtabstop=2
set shiftwidth=2
set number
set hlsearch
set incsearch

set ruler
set nrformats=

set lazyredraw

"set cursorline
"set cursorcolumn

"highlight CursorLine cterm=none ctermbg=240
"highlight CursorColumn cterm=none ctermbg=240





call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }


call plug#end()










