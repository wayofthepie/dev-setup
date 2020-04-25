" Plugins
call plug#begin('~/.vim/plugged')

" CoC
" Use release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
" CoC extensions
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-rls', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tslint-plugin', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-java', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-solargraph', {'do': 'yarn install --frozen-lockfile'}
Plug 'fannheyward/coc-rust-analyzer', {'do': 'yarn install --frozen-lockfile'}
" End Coc extensions
Plug 'rust-lang/rust.vim', {'do': 'yarn install --frozen-lockfile'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'weirongxu/coc-explorer', {'do': 'yarn install --frozen-lockfile'}

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-fugitive'

" For :Gbrowse (from vim-fugitive) to open github
Plug 'tpope/vim-rhubarb'
 
Plug 'leafgarland/typescript-vim'

Plug 'whatyouhide/vim-gotham'
Plug 'flrnprz/plastic.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'rakr/vim-one' " color scheme
Plug 'joshdick/onedark.vim' " color scheme
Plug 'drewtempelmeyer/palenight.vim'
Plug 'dikiaap/minimalist'
Plug 'rakr/vim-two-firewatch'
Plug 'tomasiser/vim-code-dark'
" Plug 'morhetz/gruvbox'
"Plug 'chase/focuspoint-vim'

Plug 'tpope/vim-surround'

Plug 'meain/vim-package-info', { 'do': 'npm install' }

Plug 'cespare/vim-toml'

Plug 'LnL7/vim-nix'

Plug 'junegunn/goyo.vim'

Plug 'itspriddle/vim-shellcheck'
call plug#end()


