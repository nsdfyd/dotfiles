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

" completion-nvim
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

" netrw
let g:netrw_banner = 0
"let ghregex='\(^\|\s\s\)\zs\.\S\+'
"let g:netrw_list_hide=ghregex
let g:netrw_special_syntax=1

syntax on 
colorscheme onedark
set termguicolors
hi Normal guibg=NONE ctermbg=NONE
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }
