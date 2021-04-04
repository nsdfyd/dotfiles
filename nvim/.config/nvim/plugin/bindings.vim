nnoremap <C-h> :tabprevious <CR>
nnoremap <C-l> :tabnext <CR>
nnoremap <C-t> :tabnew \| term <CR>
inoremap <C-h> <Esc>:tabprevious <CR>
inoremap <C-l> <Esc>:tabnext <CR>
inoremap <C-t> <Esc>:tabnew \| term <CR>
tnoremap <C-h> <C-\><C-n>:tabprevious <CR>
tnoremap <C-l> <C-\><C-n>:tabnext <CR>
tnoremap <C-t> <C-\><C-n>:tabnew \| term <CR>

nnoremap <space>git :tabnew \| Gstatus <CR> <C-w>o <CR>
nnoremap <space>tsk :tabnew \| TW <CR>
nnoremap <space>top :tabnew \| term htop <CR>
nnoremap <space>nws :tabnew \| term newsboat <CR> <C-w>o <CR>

nnoremap <space>h <C-W><C-h>
nnoremap <space>j <C-W><C-j>
nnoremap <space>k <C-W><C-k>
nnoremap <space>l <C-W><C-l>

nnoremap <space>e :E <CR>
nnoremap <space>f :FZF <CR>
nnoremap <space>g :GFiles <CR>

nnoremap gd :lua vim.lsp.buf.definition()<CR>
nnoremap K :lua vim.lsp.buf.hover()<CR>
nnoremap <space>rn :lua vim.lsp.buf.rename()<CR>
nnoremap [d :lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap ]d :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <space>q :lua vim.lsp.diagnostic.set_loclist()<CR>
vnoremap <space>f :lua vim.lsp.buf.range_formatting()<CR>

inoremap <C-n> <C-x><C-o>
