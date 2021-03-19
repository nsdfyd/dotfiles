"setlocal formatprg=autopep8\ -aa\ -
"setlocal keywordprg=pydoc
"autocmd BufWritePre <buffer> keepjumps normal m'gggqG``
"nnoremap <leader>lint :compiler plint <CR> :make! <CR> :copen <CR>
"nnoremap <leader>make :compiler unittest <CR> :make! <CR> :copen <CR>
"nnoremap <leader>build :compiler docker <CR> :make! <CR> :copen <CR>
"nnoremap <leader>run :let $VIM_FILE=expand('%') <CR> :call Term_toggle(15) <CR> python3 -i $VIM_FILE<CR> 
"nnoremap <leader>run :belowright split <CR> :resize 15 <CR> :terminal ipython -i %<CR> 
"set omnifunc=syntaxcomplete#Complete
"set omnifunc=python3complete#Complete
"autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
