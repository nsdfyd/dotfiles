filetype plugin on 
set nu
set modifiable 
set nobackup 
set noswapfile
set autoindent 
set backspace=indent,eol,start 
set expandtab 
set shiftwidth=2
set tabstop=2
set nowrap
set keymap=russian-jcukenwin 
set iminsert=0 
set imsearch=0
set shell=zsh
set path+=** 
set wildmenu
set clipboard^=unnamed,unnamedplus
set fillchars+=vert:\ 

let g:netrw_banner = 0
let g:netrw_keepdir = 0
syntax on 
set termguicolors
colorscheme onedark

" Change highlighting of cursor line when entering/leaving Insert Mode
set cursorline
highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212
autocmd InsertEnter * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1c1c1c
autocmd InsertLeave * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212

if has('nvim') 
  autocmd TermOpen term://* startinsert 
  autocmd BufWinEnter,WinEnter term://* startinsert 
endif

augroup netrw_mapping 
  autocmd!  
  autocmd FileType netrw call NetrwMapping()
augroup END

function! NetrwMapping() 
  nmap <buffer> l <CR> 
  nmap <buffer> h - 
endfunction

autocmd BufEnter * silent! exec 'cd' fnameescape(fnamemodify(finddir('.git', 
      \escape(expand('%:p:h'), ' ') . ';'), ':h'))
"autocmd VimEnter * :Lex 25 | wincmd l

let mapleader = "\<Space>"
nnoremap <leader>term :terminal <CR> 
nnoremap <leader>copen :copen <CR> 
nnoremap <leader>cw :cw <CR> 
nnoremap <leader>cn :cn <CR> 
nnoremap <leader>cp :cp <CR> 
nnoremap <leader>bn :bn <CR> 
nnoremap <leader>bp :bp <CR> 
nnoremap <leader>bd :bd <CR> 

" TODO
" open term in git root in all buffer
" open term in git root in split below
" open term in file dir below
" open term from netrw in all buffer
" open term from netrw in split below
" only one instatnce of terminal
" navigate to netrw buffer
" navigate to code buffer
" navigate to terminal buffer
" netrw term code buffers navigation
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
