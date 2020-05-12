set nocompatible

syntax enable

" Make backspace great again
set backspace=indent,eol,start

filetype plugin on

"" File search part

" Enable search in subfolders
"
set path+=**

" Display all matching files:
"	1. :find and tab between matchings
"	2. :b [pattern] to switch to previously opened files
"
set wildmenu

:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

"" File browsing
let g:netrw_altv          = 1
let g:netrw_fastbrowse    = 2
let g:netrw_keepdir       = 0
let g:netrw_liststyle     = 1
let g:netrw_retmap        = 1
let g:netrw_silent        = 1
let g:netrw_special_syntax= 1

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ervandew/supertab'
Plugin 'morhetz/gruvbox'

" End of the plugins list.
call vundle#end()

filetype plugin indent on
" End of vundle staff

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

set autoindent
set smartindent

set tabstop=2
set shiftwidth=2

set expandtab
set smarttab

set textwidth=80

set t_Co=256
syntax on

silent! colorscheme gruvbox
set background=dark
let g:airline_theme='gruvbox'

set ruler
set number

set showmatch
set smartcase

set hlsearch

" Drop last search by [Enter]
nnoremap <CR> :noh<CR><CR>

" Fix the delay from visual to normal
set ttimeoutlen=0

" Long lines handling
set linebreak

" Supertab completion search only the current file
let g:SuperTabDefaultCompletionType = "<c-x><c-p>"

" Search for tags file to the root
set tags=./tags.txt;/

"Cursor settings:

"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)

