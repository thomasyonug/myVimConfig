

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'
Plug 'Raimondi/delimitMate'


Plug 'Valloric/MatchTagAlways'
Plug 'alvan/vim-closetag'
Plug 'marijnh/tern_for_vim'


call plug#end()







set nocompatible
set backspace=indent,eol,start
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







