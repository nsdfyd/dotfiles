setlocal formatprg=autopep8\ -aa\ -
autocmd BufWritePre <buffer> keepjumps normal m'ggGgq``
nnoremap <leader>lint :compiler plint <CR> :make! <CR> :copen <CR>
nnoremap <leader>make :compiler unittest <CR> :make! <CR> :copen <CR>
nnoremap <leader>build :compiler docker <CR> :make! <CR> :copen <CR>
