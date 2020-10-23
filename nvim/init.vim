scriptencoding utf-8
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces
set number

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

au BufNewFile,BufRead *.tsx set filetype=typescript.tsx

" By default the leader key is \ just setting this so I remember!
let mapleader="\\"

"let g:dart_format_on_save = 1          
"let g:dart_style_guide = 2
" Don't auto wrap commit messages
" au FileType gitcommit :GoyoEnter

let g:lsc_enable_autocomplete = v:false
