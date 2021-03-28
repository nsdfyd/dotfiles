nmap gx :silent execute "!xdg-open " . shellescape("<cWORD>")<CR>
nmap <buffer> l <CR>
nmap <buffer> h -
nmap <buffer> <C-z> :call Term_toggle(15)<CR>
nnoremap <leader>e :E <CR>
nnoremap <leader>f :FZF <CR>
nnoremap <leader>g :GFiles <CR>
nnoremap <C-z> :call Term_toggle(15)<CR>
tnoremap <C-z> <C-\><C-n>:call Term_toggle(15)<CR>
nnoremap gD :lua vim.lsp.buf.declaration()<CR>
nnoremap gd :lua vim.lsp.buf.definition()<CR>
nnoremap K :lua vim.lsp.buf.hover()<CR>
nnoremap gi :lua vim.lsp.buf.implementation()<CR>
nnoremap <C-k> :lua vim.lsp.buf.signature_help()<CR>
nnoremap <space>wa :lua vim.lsp.buf.add_workspace_folder()<CR>
nnoremap <space>wr :lua vim.lsp.buf.remove_workspace_folder()<CR>
nnoremap <space>wl :lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>
nnoremap <space>D :lua vim.lsp.buf.type_definition()<CR>
nnoremap <space>rn :lua vim.lsp.buf.rename()<CR>
nnoremap gr :lua vim.lsp.buf.references()<CR>
nnoremap <space>e :lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap [d :lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap ]d :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <space>q :lua vim.lsp.diagnostic.set_loclist()<CR>
vnoremap <space>f :lua vim.lsp.buf.range_formatting()<CR>
