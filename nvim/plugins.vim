" Plugins
call plug#begin('~/.vim/plugged')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" coc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tslint-plugin', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-java', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-solargraph', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-python', {'tag':'1.2.9', 'do': 'yarn install --frozen-lockfile'}
Plug 'fannheyward/coc-rust-analyzer', {'do': 'yarn install --frozen-lockfile'}
Plug 'clangd/coc-clangd', {'do': 'yarn install --frozen-lockfile'}
Plug 'weirongxu/coc-explorer', {'do': 'yarn install --frozen-lockfile'}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" rust 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'rust-lang/rust.vim', {'do': 'yarn install --frozen-lockfile'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" themes 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tomasiser/vim-code-dark'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tpope! 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-fugitive'
" for :Gbrowse (from vim-fugitive) to open github
Plug 'tpope/vim-rhubarb'
" cs to change surrounding
Plug 'tpope/vim-surround'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" typescript 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'leafgarland/typescript-vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" typescript 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'cespare/vim-toml'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nix 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'LnL7/vim-nix'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" markdown 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'junegunn/goyo.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" shell 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'itspriddle/vim-shellcheck'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" dart & flutter 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'iamcco/coc-flutter',{'do': 'yarn install --frozen-lockfile'}
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" language server client 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'natebosch/vim-lsc-dart'

call plug#end()


