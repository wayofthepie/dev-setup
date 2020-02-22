""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom commands 
" To search use :vimgrep /"\s:.*/ %
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :general commands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <A-r> :so ~/.config/nvim/init.vim<CR> 

" Use K for show documentation in preview window
function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
nnoremap <silent> K :call <SID>show_documentation()<CR>

" buffers
nmap <C-n> :bn<CR>  " Next buffer in list
nmap <C-p> :bp<CR>  " Previous buffer in list
nnoremap <silent> <leader>c :bdelete<CR>
nnoremap <silent> <leader>co :copen<CR>
nnoremap <silent> <leader>cn :cnext<CR>
nnoremap <silent> <leader>cp :cprevious<CR>
nnoremap <silent> <leader>lo :lopen<CR>
nnoremap <silent> <leader>ln :lnext<CR>
nnoremap <silent> <leader>lb :lprevious<CR>
nmap <silent> <leader>s :w<CR>

autocmd CursorHold * if ! coc#util#has_float() | call CocActionAsync('doHover') | endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :custom commands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
com! FormatJSON %!python -m json.tool
set wildignore +=target/**,.git/**
com! Todo :vimgrep /\<TODO\>/j **/*
com! Commit !git commit

nnoremap <silent> <leader>do :Todo<CR>:copen<CR>

let $FZF_DEFAULT_COMMAND = "rg --files --no-ignore-vcs --iglob '!target' --iglob '!.git' --hidden" 
" find files
nnoremap <silent> <leader>f :FZF<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :terminal commands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" toggle terminal on/off (neovim)
nnoremap <C-l> :call TermToggle(30)<CR>
inoremap <C-l> <Esc>:call TermToggle(30)<CR>
tnoremap <C-l> <C-\><C-n>:call TermToggle(30)<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :coc commands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <leader>lp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>ln <Plug>(coc-diagnostic-next)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap keys for gotos
nmap <silent> <leader>ld <Plug>(coc-definition)
nmap <silent> <leader>lt <Plug>(coc-type-definition)
nmap <silent> <leader>li <Plug>(coc-implementation)
nmap <silent> <leader>lf <Plug>(coc-references)

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :vim-fugitive
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>gs :Gstatus<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :rust
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <leader>fo :call CocActionAsync('format')<CR>
nnoremap <expr><C-f> coc#util#has_float() ? coc#util#float_scroll(1) : "\<C-f>"
nnoremap <expr><C-b> coc#util#has_float() ? coc#util#float_scroll(0) : "\<C-b>"

let g:coc_snippet_next = '<c-k>'
let g:coc_snippet_prev = '<c-j>'
" rust specific commands
nnoremap <silent> <leader>ru :CocCommand rust-analyzer.reload <CR> 
" find functions in current file, opens in :copen
nnoremap <silent> <leader>lf :vimgrep /fn .*/ %<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

