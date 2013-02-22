let g:syntastic_java_checkers = []

" Supertab settings
" supertab + eclim == java win
let g:SuperTabDefaultCompletionTypeDiscovery = [
    \ "&completefunc:<c-x><c-u>",
    \ "&omnifunc:<c-x><c-o>",
    \ ]
let g:SuperTabLongestHighlight = 1


" Mapping ctrl-space
if has("gui_running")
    " C-Space seems to work under gVim on both Linux and win32
    imap <C-Space> <C-x><C-u>
else " no gui
  if has("unix")
    imap <nul> <C-x><C-u>
  else
  " I have no idea of the name of Ctrl-Space elsewhere
  endif
endif

" Eclim settings
" ,i imports whatever is needed for current line
nnoremap <silent> <LocalLeader>i :JavaImport<cr>
"" ,d opens javadoc for statement in browser
nnoremap <silent> <LocalLeader>d :JavaDocSearch -x declarations<cr>
"" ,<enter> searches context for statement
nnoremap <silent> <LocalLeader><cr> :JavaSearchContext<cr>
"" ,jv validates current java file
nnoremap <silent> <LocalLeader>jv :Validate<cr>
"" ,jc shows corrections for the current line of java
nnoremap <silent> <LocalLeader>jc :JavaCorrect<cr>
