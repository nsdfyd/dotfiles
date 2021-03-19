set clipboard^=unnamed,unnamedplus
set autochdir
set nowrap
set noswapfile
set modifiable
set rnu
set autoindent
set backspace=indent,eol,start
set expandtab
set shiftwidth=4
set tabstop=4
set mouse+=a
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

call plug#begin('~/.config/nvim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kkvh/vim-docker-tools'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
call plug#end()

syntax on 
colorscheme onedark
set termguicolors
hi Normal guibg=NONE ctermbg=NONE
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }


nmap gx :silent execute "!xdg-open " . shellescape("<cWORD>")<CR>
nnoremap <leader>e :E <CR>
nnoremap <leader>f :FZF <CR>
nnoremap <leader>g :GFiles <CR>
nnoremap <C-z> :call Term_toggle(15)<CR>
tnoremap <C-z> <C-\><C-n>:call Term_toggle(15)<CR>

set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

"lua require('lspconfig').pyls_ms.setup{cmd = {"pyls"}}
lua << EOF
require'lspconfig'.pyls.setup{
    cmd={"pyls"},
    on_attach=require'completion'.on_attach
}
EOF

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

" TODO
"
" remote (scp netrw), remote in docker, local, local in docker
"   docker tools
"   lsp server
"   terminal, run something remote, tests for example
"   debug workflow (variables, interactive shell) vim-inspector like in video
"   databases integration (table completion, viewer, fast queries) dadbot
"   postman
