setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=79
setlocal smarttab
setlocal expandtab
setlocal nowrap
setlocal formatoptions-=t         " do not wrap automatically on text

" rope
" pip install rope ropemode ropevim ropevim-omni
if filereadable("/usr/local/share/vim/plugin/ropevim.vim")
  source /usr/local/share/vim/plugin/ropevim.vim
  let ropevim_codeassist_maxfixes=10
  let ropevim_guess_project=1
  let ropevim_vim_completion=1
  let ropevim_enable_autoimport=0
  let ropevim_extended_complete=1 
  let ropevim_enable_shortcuts=0
  autocmd FileType python setlocal omnifunc=RopeCompleteFunc

  map <leader>rg :call RopeGotoDefinition()<cr>
  map <leader>rd :call RopeShowDoc()<cr>
  map <leader>rm :RopeExtractMethod<cr>
  map <leader>ri :call RopeOrganizeImports()<cr>
  map <leader>rr :call RopeRename()<cr>
  map <leader>rc :call RopeShowCalltip()<cr>
else
  autocmd FileType python set omnifunc=pythoncomplete#Complete
endif


" Remove unused whitespace on save
au BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
