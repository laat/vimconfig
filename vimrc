call pathogen#infect()
call pathogen#helptags()


"                Security
"----------------------------------

set modelines=0                               " no modelines [http://www.guninski.com/vim1.html]
let g:secure_modelines_verbose=0              " securemodelines vimscript
let g:secure_modelines_modelines = 15         " 15 available modelines


"                Sanity
"----------------------------------

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

set scrolloff=3                              " keep at least 3 lines above/below
set sidescrolloff=5                          " keep at least 5 lines left/right


"               General keybindings
"----------------------------------
let mapleader = ","

" norwegian oe is :
nnoremap <Char-248> :
vnoremap <Char-248> :

set pastetoggle=<F2>                         " paste with F2

" forgetting to leave insertmode
imap jj <Esc>
imap kkk <Esc>

" It's 2012.
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" window movement
no <C-L> <C-W>l
no <C-H> <C-W>h
no <C-J> <C-W>j
no <C-K> <C-W>k

"i accidentally  F1  too much
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"tab movement
map <S-h> gT
map <S-l> gt

" D behaves
nnoremap D d$

" sudo write
cmap w!! w !sudo tee % >/dev/null

iabbrev ldis ಠ_ಠ
iabbrev levi 😈


"                Search
"----------------------------------

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
"----------------------------------

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


"                Style
"----------------------------------

set ruler                                    " show the line number on the bar
set nonu                                     " no linenumbers
set visualbell t_vb=                         " Disable ALL bells
set noerrorbells                             " no error bells please
set t_Co=256                                 " 256 colors
set cursorline                               " mark current line with a line

" Powerline
" pip install --user git+git://github.com/Lokaltog/powerline
if isdirectory("/home/sigurd/.local/lib/python2.7/site-packages/powerline/bindings/vim")
    set rtp+=/home/sigurd/.local/lib/python2.7/site-packages/powerline/bindings/vim
endif

" Show special characters (tab and eol)
" set list
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
augroup trailing " do not show tailing whitespace in insertmode
    au!
    au InsertEnter * :set listchars-=trail:⌴
    au InsertLeave * :set listchars+=trail:⌴
augroup END


"                Other
"----------------------------------

" Always jump to last known cursor pos
if has("autocmd")
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
  augroup END
endif " has("autocmd")

