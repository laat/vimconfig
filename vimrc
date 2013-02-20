call pathogen#infect()
call pathogen#helptags()

" Nerdtree
autocmd vimenter * if !argc() | NERDTree | endif " auto open if no file
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp']
let NERDTreeWinPos="left"
let NERDTreeWinSize=28
nmap <leader>n :NERDTreeToggle<cr>
