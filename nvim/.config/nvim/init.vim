filetype plugin indent on 
set autochdir
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
hi Normal guibg=NONE ctermbg=NONE

autocmd BufEnter * exec "silent! bdelete! " . bufnr("ranger")


let mapleader = "\<Space>"
nnoremap <leader>copen :copen <CR> 
nnoremap <leader>k evT<space>K
nnoremap <leader>cw :cw <CR> 
nnoremap <leader>cn :cn <CR> 
nnoremap <leader>cp :cp <CR> 
nnoremap <leader>bn :bn <CR> 
nnoremap <leader>bp :bp <CR> 
nnoremap <leader>bd :bd <CR> 

nnoremap <M-e> :term ranger <CR>
nnoremap <M-t> :call Term_toggle(15)<CR>
tnoremap <M-t> <C-\><C-n>:call Term_toggle(15)<CR>
nnoremap <M-g> :call Term_toggle_git_root(15)<CR>
tnoremap <M-g> <C-\><C-n>:call Term_toggle_git_root(15)<CR>


" TODO
" :DockerBuild should build project image
" :DockerRun should run docker image in daemon mode
" :DockerKill should kill runned docker image
" modes for :make :w (metal, with detached docker, remote)
" metal should just works
" :make should run tests in runned docker
" :make fix format
" ranger toggle
" :w should also run linter in runned docker
" :lint should lint all in directory
" hotkey to lint all project
" ctags
" ctags site-packages
" debug workflow (variables, interactive shell)
" databases integration (table completion, viewer, fast queries)
