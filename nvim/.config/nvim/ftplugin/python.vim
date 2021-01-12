setlocal formatprg=autopep8\ -aa\ -
autocmd BufWritePre <buffer> keepjumps normal m'ggGgq``
nnoremap <leader>lint :compiler pylint <CR> :make! <CR> :copen <CR>
nnoremap <leader>make :compiler unittest <CR> :make! <CR> :copen <CR>
