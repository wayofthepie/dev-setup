let g:term_buf = 0
let g:term_win = 0
function! TermToggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        bot new
        exec 'resize ' . a:height
        try
            exec 'buffer ' . g:term_buf
        catch
            call termopen($SHELL, {'detach': 0})
            let g:term_buf = bufnr('')
            set nonumber
            set norelativenumber
            set signcolumn=no
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

" Hides terminal buffers from the tabline, doesnt disable them when cycling
autocmd TermOpen * set bufhidden=hide

" Terminal go back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap :q! <C-\><C-n>:q!<CR>

