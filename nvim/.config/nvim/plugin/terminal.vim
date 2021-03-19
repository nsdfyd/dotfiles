let g:term_buf = 0
let g:term_win = 0

function! Term_toggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen("cd $(pwd) && $SHELL", {"detach": 0})
            let g:term_buf = bufnr("")
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

autocmd CompleteDone * pclose
if has('nvim')
  autocmd TermOpen term://* startinsert | setlocal nonumber norelativenumber
  autocmd BufWinEnter,WinEnter term://* startinsert
endif
