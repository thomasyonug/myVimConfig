set nocompatible


"set term=ansi
syntax on



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





call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }


call plug#end()



"NERDTree config
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'
autocmd vimenter * NERDTree







