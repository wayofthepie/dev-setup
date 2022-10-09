""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom commands
" To search use :vimgrep /"\s:.*/ % """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :general commands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>ei :e ~/.config/nvim/init.vim<CR>
nnoremap <silent> <leader>ecs :e ~/.config/nvim/coc-settings.json<CR>
nnoremap <silent> <leader>ep :e ~/.config/nvim/plugins.vim<CR>
nnoremap <silent> <leader>ec :e ~/.config/nvim/commands.vim<CR>
nnoremap <A-r> :so ~/.config/nvim/init.vim<CR>

" Use K for show documEntation in preview window
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
nnoremap <silent> <leader>cx :cclose<CR>
nnoremap <silent> <leader>lo :lopen<CR>
nnoremap <silent> <leader>ln :lnext<CR>
nnoremap <silent> <leader>lb :lprevious<CR>
nnoremap <silent> <leader>lx :lclose<CR>
nmap <silent> <leader>s :w<CR>

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" autocmd CursorHold * if ! coc#util#has_float() | call CocActionAsync('doHover') | endif
autocmd BufRead,BufNewFile *.yaml,*.yml,*.java,*.ts,*.tsx,*.js,*.jsx set shiftwidth=2

" coc-explorer
nmap <space>e :CocCommand explorer<CR>

" context sensitive action
"nnoremap <leader>a :CocAction<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :custom commands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
com! FormatJSON %!python -m json.tool --indent 2
set wildignore +=target/**,.git/**
com! Todo :vimgrep TODO `git ls-files`

nnoremap <silent> <leader>do :Todo<CR>:copen<CR>

let $FZF_DEFAULT_COMMAND = 'rg --files
  \ --no-ignore-vcs
  \ --iglob "!target"
  \ --iglob "!node_modules"
  \ --iglob "!.git"
  \ --iglob "!/bin/"
  \ --iglob "!build"
  \ --iglob "!gradle"
  \ --iglob "!.gradle"
  \ --iglob "!.settings"
  \ --iglob "!*.class"
  \ --iglob "!__pycache__"
  \ --iglob "!.pytest_cache"
  \ --hidden'

" find files
nnoremap <silent> <leader>f :FZF<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :terminal commands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" toggle terminal on/off (neovim)
" nnoremap <C-l> :call TermToggle(20)<CR>
" inoremap <C-l> <Esc>:call TermToggle(30)<CR>
" tnoremap <C-l> <C-\><C-n>:call TermToggle(30)<CR>

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
nmap <leader>a  <Plug>(coc-codeaction-cursor)

" Remap for do codeAction of current line
"nmap <leader>a  <Plug>(coc-codeaction-line)<CR>
nmap <leader>al  <Plug>(coc-codelens-action)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

nmap <leader>dn <Plug>(coc-diagnostic-next)
nmap <leader>dp <Plug>(coc-diagnostic-prev)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :vim-fugitive
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>gs :Git<CR>
nnoremap <silent> <leader>gc :Git commit<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :rust
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <leader>fo :call CocActionAsync('format')<CR>
nnoremap <expr><C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <expr><C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"

nnoremap <silent> <leader>es :CocCommand snippets.editSnippets<CR>

let g:coc_snippet_next = '<c-k>'
let g:coc_snippet_prev = '<c-j>'
" rust specific commands
nnoremap <silent> <leader>ru :CocCommand rust-analyzer.reload <CR>
" find functions in current file, opens in :copen
nnoremap <silent> <leader>rf :vimgrep /fn .*/ %<CR>
nnoremap <silent> <leader>rp :vimgrep /pub .*/ %<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :markdown
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>mp :CocCommand markdown-preview-enhanced.openPreview<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :fixes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fix enter for autocomplete selection
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
