" Supertab settings
" supertab + eclim == java win
let g:SuperTabDefaultCompletionTypeDiscovery = [
    \ "&completefunc:<c-x><c-u>",
    \ "&omnifunc:<c-x><c-o>",
    \ ]
let g:SuperTabLongestHighlight = 1

" Eclim settings
" ,i imports whatever is needed for current line
"nnoremap <silent> <LocalLeader>i :JavaImport<cr>
"" ,d opens javadoc for statement in browser
"nnoremap <silent> <LocalLeader>d :JavaDocSearch -x declarations<cr>
"" ,<enter> searches context for statement
"nnoremap <silent> <LocalLeader><cr> :JavaSearchContext<cr>
"" ,jv validates current java file
"nnoremap <silent> <LocalLeader>jv :Validate<cr>
"" ,jc shows corrections for the current line of java
"nnoremap <silent> <LocalLeader>jc :JavaCorrect<cr>
" 'open' on OSX will open the url in the default browser without issue
" let g:EclimBrowser='open'
