call pathogen#infect()
call pathogen#helptags()


"                Security
"------------------------
set modelines=0                               " no modelines [http://www.guninski.com/vim1.html]
let g:secure_modelines_verbose=0              " securemodelines vimscript
let g:secure_modelines_modelines = 15         " 15 available modelines

"                General
"------------------------

" sanity
filetype on
filetype plugin indent on                    " load file type plugins + indentation
set nocompatible
set encoding=utf-8
set fileencodings=utf-8
set backspace=indent,eol,start               " backspace over all kinds of things
set noautowrite                              " don't automagically write on :next
set autoindent smartindent copyindent        " auto/smart indent
set smarttab                                 " tab and backspace are smart
set undolevels=1000                          " 1000 undos
set undofile                                 " undo after exit, <filename>.un~

"                Search
" -----------------------
set incsearch " incremental search
set ignorecase " search ignoring case
set smartcase " Ignore case when searching lowercase
set hlsearch " highlight the search
set showmatch " show matching bracket
set diffopt=filler,iwhite " ignore all whitespace and sync

" regex search, the default is sort of broken
nnoremap / /\v
vnoremap / /\v

noremap <silent> <leader><space> :noh<cr>:call clearmatches()<cr>

"                Plugins
" -----------------------

" Snipmate
let g:snips_author = 'Sigurd Fosseng'

" Nerdtree
autocmd vimenter * if !argc() | NERDTree | endif " auto open if no file
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp']
let NERDTreeWinPos="left"
let NERDTreeWinSize=28
nmap <leader>n :NERDTreeToggle<cr>

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_check_on_open=1
let g:syntastic_auto_jump=0
let g:syntastic_warning_symbol='⚠'
hi todo guifg=#FFA500 guibg=bg
let g:syntastic_error_symbol='✗'
hi error guifg=#FF0000 guibg=bg
