                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4
"
set softtabstop=4   " Sets the number of columns for a TAB
"
set expandtab       " Expand TABs to spaces
set number
set relativenumber
set list listchars=tab:»\ ,trail:·,extends:»,precedes:«

" Kernel dev
"autocmd FileType c set tabstop=8 shiftwidth=8
autocmd FileType tf set tabstop=2 shiftwidth=2
autocmd FileType terraform set tabstop=2 shiftwidth=2
autocmd FileType sh set tabstop=2 shiftwidth=2
autocmd FileType yaml set tabstop=2 shiftwidth=2
autocmd FileType hcl set tabstop=2 shiftwidth=2
"autocmd FileType yaml set ft=yaml.ansible
autocmd FileType dockerfile set tabstop=2 shiftwidth=2
autocmd FileType snippets set tabstop=4

" dont add comments on new line if adding newline from comments
set formatoptions-=cro
let cfg_path="~/.config/nvim/"

" load plugins
execute "source" cfg_path . "plugins.vim"
" load custom commands
execute "source" cfg_path . "commands.vim"
" load theme config
execute "source" cfg_path . "theme.vim"
" load terminal config
execute "source" cfg_path . "terminal.vim"

au BufNewFile,BufRead *.tsx set filetype=typescriptreact
"au BufNewFile,BufRead *.pkr.hcl set filetype=tf

" By default the leader key is \ just setting this so I remember!
let mapleader="\\"

"let g:dart_format_on_save = 1
"let g:dart_style_guide = 2
" Don't auto wrap commit messages
" au FileType gitcommit :GoyoEnter

let g:lsc_enable_autocomplete = v:false
let g:tex_flavor = 'latex'
let g:vimtex_view_general_viewer = "evince"

" email
let g:iris_name  = "Stephen OBrien"
let g:iris_mail = "wayofthepie@gmail.com"

let g:iris_smtp_host  = "smtp.google.com" "Default to g:iris_imap_host
let g:iris_smtp_port  = 587
let g:iris_smtp_login = "wayofthepie@gmail.com" "Default to g:iris_mail
let g:iris_smtp_passwd_filepath = "/home/chaospie/.iris-email/iris-smtp-pass.gpg"

let g:iris_imap_host  = "imap.gmail.com"
let g:iris_imap_port  = 993
let g:iris_imap_login = "wayofthepie@gmail.com" "Default to g:iris_mail
let g:iris_imap_passwd_filepath = "/home/chaospie/.iris-email/iris-smtp-pass.gpg"

" for sass support
autocmd FileType scss setl iskeyword+=@-@

" fix paste issue, bracketed paste mode
set t_BE=

" this does not seem to install right with vim plugged
let g:coc_global_extensions=[ 'coc-omnisharp' ]

" rust-analyzer
"For Types hint
hi default CocInlayHint ctermfg=10 ctermbg=10 guifg=#4E81AC

