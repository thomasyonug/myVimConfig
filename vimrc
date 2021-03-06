

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer --clang-completer' }
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'
Plug 'rking/ag.vim'
Plug 'brooth/far.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'mhinz/vim-startify'
Plug 'majutsushi/tagbar'
 

Plug 'Valloric/MatchTagAlways'
Plug 'alvan/vim-closetag'

"git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'


"ecmascript
Plug 'marijnh/tern_for_vim'
"Plug 'w0rp/ale'

Plug 'easymotion/vim-easymotion'

call plug#end()








set nocompatible
set backspace=indent,eol,start

autocmd BufNewFile,BufRead *.vue set filetype=javascript.jsx
let g:ale_linter_aliases = {'vue': ['vue', 'javascript']}
let g:ale_linters = {
	\   'vue': ['eslint', 'vls'],
	\   'javascript': ['eslint'],
	\}
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow


if has("autocmd")
	autocmd! bufwritepost vimrc source $MYVIMRC
endif


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



let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }



let g:airline_theme='dark'
let g:polyglot_disabled = ['vue']
set completeopt-=preview

let g:tagbar_left=1
let g:tagbar_autofocus = 1


let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'vue' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \}


let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue'

"NERDTree config
let NERDTreeWinPos=1
autocmd VimEnter *
	\   if !argc()
	\ |   Startify
	\ |   NERDTree
	\ |   wincmd w







" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

"startify config
let g:startify_custom_header = [
			\'   __  __                                        __  __                   __                                 ',
			\'  /\ \/\ \                                      /\ \/\ \                 /\ \      __                        ',
			\'  \ \ \_\ \     __     _____   _____   __  __   \ \ \_\ \     __      ___\ \ \/''\/\_\    ___      __        ',
			\'   \ \  _  \  /''__`\  /\''__`\/\''__`\/\ \/\ \  \ \  _  \  /''__`\  /''__\ \   < \/\ \ /'' _`\  /''_`\      ',
			\'    \ \ \ \ \/\ \L\.\_\ \ \L\ \ \ \L\ \ \ \_\ \   \ \ \ \ \/\ \L\.\_/\ \__/\ \ \\`\\ \ \/\ \/\ \/\ \L\ \     ',
			\'     \ \_\ \_\ \__/.\_\\ \  __/\ \  __/\/`____ \   \ \_\ \_\ \__/.\_\ \____\\ \_\ \_\ \_\ \_\ \_\ \____ \    ',
			\'      \/_/\/_/\/__/\/_/ \ \ \/  \ \ \/  `/___/> \   \/_/\/_/\/__/\/_/\/____/ \/_/\/_/\/_/\/_/\/_/\/___L\ \   ',
			\'                          \ \_\   \ \_\     /\___/                                                  /\____/  ',
			\'                           \/_/    \/_/     \/__/                                                   \_/__/   ',
			\ ]



" map
let mapleader=" "
" terminal
nnoremap <leader>te :below ter ++rows=20<CR> 
" file tree
nnoremap <leader>tr :NERDTreeFocus<CR>
" tagbar
nnoremap <leader>tt :TagbarToggle<CR>
" save
nnoremap <leader>s :w<CR>
" buffer search
nnoremap <leader>f :silent execute "AgBuffer! " . shellescape(expand("<cWORD>"))<CR>
vnoremap <leader>f :<C-U>call <SID>AgOperator(visualmode())<CR>
function! s:AgOperator(type)
		let saved_unnamed_register = @@

    if a:type ==# 'v'
        normal! `<v`>y
    elseif a:type ==# 'char'
        normal! `[v`]y
    else

    endif

    silent execute "AgBuffer!" . shellescape(@@)
    copen

		let @@ = saved_unnamed_register
endfunction

nnoremap <leader>l >>
nnoremap <leader>h <<

" go to defination
nnoremap <leader>gd <C-]>

" binary display
nnoremap <leader>2 :%!xxd<CR>
nnoremap <leader>0 :%!xxd -r<CR>

nmap <leader>mf <Plug>(easymotion-s2)
nmap <leader>mw <leader><leader>w


