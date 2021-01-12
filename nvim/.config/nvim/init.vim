filetype plugin on 
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

set shell=bash 
set path+=** 
set wildmenu

let g:netrw_banner = 0 
syntax on 
colorscheme github 
set background=light

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

let mapleader = "\<Space>"
nnoremap <leader>copen :copen <CR> 
nnoremap <leader>cw :cw <CR> 
nnoremap <leader>cn :cn <CR> 
nnoremap <leader>cp :cp <CR> 
nnoremap <leader>bn :bn <CR> 
nnoremap <leader>bp :bp <CR> 
nnoremap <leader>bd :bd <CR> 
nnoremap <leader>lex :Lex 25 <CR>
