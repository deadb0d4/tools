set nocompatible

filetype plugin indent on

"" Plugin via Vundle
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'joshdick/onedark.vim'

" <leader>c<space>
Plugin 'preservim/nerdcommenter'

" <leader>k to colorize a word
Plugin 'lfv89/vim-interestingwords'
call vundle#end()

syntax enable
syntax on

" Make backspace great again
set backspace=indent,eol,start

" Enable search in subfolders
set path+=**

" Display all matching files:
"	1. :find and tab between matchings
"	2. :b [pattern] to switch to previously opened files
set wildmenu

" File browsing
let g:netrw_altv          = 1
let g:netrw_fastbrowse    = 2
let g:netrw_keepdir       = 0
let g:netrw_liststyle     = 1
let g:netrw_retmap        = 1
let g:netrw_silent        = 1
let g:netrw_special_syntax= 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Enable NERDCommenterToggle to check all selected lines are commented
let g:NERDToggleCheckAllLines = 1

set autoindent
set cindent
set enc=utf-8
set expandtab
set fenc=utf-8
set hlsearch
set ignorecase
set incsearch
set number
set relativenumber
set ruler
set shiftwidth=2
set showmatch
set smartcase
set smartindent
set smarttab
set t_Co=256
set tabstop=2
set termencoding=utf-8
set ttyfast

" long lines handling
set wrap
set nolist
set linebreak
set breakindent
set display+=lastline

" multiple edited buffers (ctrl-6 to switch)
set hidden

silent! colorscheme onedark
set background=dark
hi Normal guibg=NONE ctermbg=NONE
hi Terminal guibg=NONE ctermbg=NONE

" Fix the delay from visual to normal
set ttimeoutlen=0

" convenient insertion
nnoremap a A
nnoremap A a

" turn off recording
nnoremap q <Nop>
vnoremap q <Nop>

" show at least 4 other lines at the top and the bottom
set scrolloff=2

" Iterate through virtual lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Supertab completion search only the current file
let g:SuperTabDefaultCompletionType = "<c-x><c-p>"

" Search for tags file to the root
set tags=./tags.txt;/

" Cursor settings:
"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)

" Local vim config
silent! so .vimlocal

" Light the current line up...
set cursorline
highlight CursorLine ctermbg=None ctermfg=white

" Save all and quit
nnoremap <leader>q <Esc>:xa<CR>
nnoremap <leader>x <Esc>:qa!<CR>

" Copy to clipboard
vnoremap <leader>y "*y<CR>

" Drop last search by `Enter`
nnoremap <CR> :noh<CR><CR>

" Align comments
let g:NERDDefaultAlign = 'left'
