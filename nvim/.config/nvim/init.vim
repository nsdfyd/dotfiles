filetype plugin on 
set clipboard^=unnamed,unnamedplus
set fillchars+=vert:\ 
set nowrap
set nu
set shell=zsh

set keymap=russian-jcukenwin 

set iminsert=0 
set imsearch=0

set modifiable 
set nobackup 
set noswapfile

set autoindent 
set backspace=indent,eol,start 
set expandtab 
set shiftwidth=4
set tabstop=4

set path+=** 
set wildmenu

syntax on 
set termguicolors
colorscheme onedark

"autocmd BufEnter * silent! exec 'cd' fnameescape(fnamemodify(finddir('.git', 
"      \escape(expand('%:p:h'), ' ') . ';'), ':h'))
"autocmd VimEnter * :Lex 25 | wincmd l

let mapleader = "\<Space>"
nnoremap <leader>copen :copen <CR> 
nnoremap <leader>cw :cw <CR> 
nnoremap <leader>cn :cn <CR> 
nnoremap <leader>cp :cp <CR> 
nnoremap <leader>bn :bn <CR> 
nnoremap <leader>bp :bp <CR> 
nnoremap <leader>bd :bd <CR> 

" TODO
" modes for :make :w (metal, with detached docker, remote)
" replace binding to :build :make :lint
" :make dir :lint dir
" hotkey to lint all project
" hotkey to test all project
" refactor compilers makeprg
" ctags
" ctags site-packages
" completion
" import completion
" go to documentation hotkey
" debug workflow
" databases integration (table completion, viewer, fast queries)
" other languages like javascript java scala
