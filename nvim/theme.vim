" 24 bit color
execute "set t_8f=\e[38;2;%lu;%lu;%lum"
execute "set t_8b=\e[48;2;%lu;%lu;%lum"
let $NVIM_TUI_ENABLE_TRUE_COLOR=1


set t_Co=256
set t_ut=
let g:airline_theme='onedark'
" let g:codedark_conservative = 1
set termguicolors     " enable true colors support
colorscheme codedark

" Allow comments in json Coc config
augroup fix_jsonc
  autocmd!
  autocmd FileType json syntax match Comment +\/\/.\+$+
augroup end

" Setup statusline
set statusline=%{FugitiveStatusline()}

" Airline setup
" requires manual install of https://github.com/powerline/fonts
" and then setting a powerline font in settings
let g:airline_powerline_fonts = 1

" Show buffers in tabs
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Don't show certain buffer types
let g:airline#extensions#tabline#ignore_bufadd_pat =
  \ 'bash|!'

set timeoutlen=600

