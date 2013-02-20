call pathogen#infect()
call pathogen#helptags()

" Snipmate
let g:snips_author = 'Sigurd Fosseng'

" Nerdtree
autocmd vimenter * if !argc() | NERDTree | endif " auto open if no file
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp']
let NERDTreeWinPos="left"
let NERDTreeWinSize=28
nmap <leader>n :NERDTreeToggle<cr>

" syntastic
let g:syntastic_enable_signs=1
let g:syntastic_check_on_open=1
let g:syntastic_auto_jump=0
let g:syntastic_warning_symbol='⚠'
hi todo guifg=#FFA500 guibg=bg
let g:syntastic_error_symbol='✗'
hi error guifg=#FF0000 guibg=bg
