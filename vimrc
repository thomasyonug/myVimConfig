

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'Raimondi/delimitMate'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'
Plug 'rking/ag.vim'
Plug 'brooth/far.vim'



Plug 'Valloric/MatchTagAlways'
Plug 'alvan/vim-closetag'
Plug 'marijnh/tern_for_vim'

"git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

call plug#end()








set nocompatible
set backspace=indent,eol,start
autocmd BufNewFile,BufRead *.vue set filetype=javascript.jsx




"gitgutter
autocmd BufWritePost * GitGutter




syntax on
colorscheme onedark

set tabstop=2
set encoding=UTF-8

set softtabstop=2
set shiftwidth=2
set number
set hlsearch
set incsearch

set nrformats=
set cursorline

set lazyredraw
set ttyfast
set nowrap
set foldmethod=syntax
set nofoldenable
set noshowmode
set scrolloff=5



let g:airline_theme='dark'
let g:polyglot_disabled = ['vue']
set completeopt-=preview


let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'vue' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \}


let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue'

"NERDTree config
autocmd vimenter * NERDTree
let NERDTreeWinPos=1


let mapleader=" "






