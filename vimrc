set nocompatible

call plug#begin()

Plug 'fatih/vim-go'
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-scripts/DrawIt'
Plug 'Yggdroot/vim-mark'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

Plug 'ervandew/SuperTab'

Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

set t_Co=256
set ts=4
set nu
set list lcs=tab:\|\ 

set incsearch
set wildmode=longest,list,full

set cursorline

filetype plugin indent on
syn on

colorscheme distinguished
"colorscheme koehler

let g:go_fmt_command='goimports'
let g:go_highlight_functions = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1

let g:go_auto_type_info = 1

let g:mapleader=","
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
