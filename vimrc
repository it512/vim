set nocompatible

call plug#begin()

Plug 'junegunn/vim-plug'

Plug 'fatih/vim-go'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-scripts/DrawIt'
Plug 'Yggdroot/vim-mark'

Plug 'terryma/vim-multiple-cursors'

"Plug 'leafgarland/typescript-vim'

"git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'

"Plug 'cespare/vim-toml'

Plug 'Valloric/YouCompleteMe'

call plug#end()

set t_Co=256
set ts=4
set nu
set list lcs=tab:\|\ 

set incsearch
set wildmode=longest,list,full

"set cursorline

filetype plugin indent on
syn on

"colorscheme distinguished
colorscheme koehler
"colorscheme Tomorrow-Night

let g:go_fmt_command='goimports'
let g:go_highlight_functions = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1

let g:go_auto_type_info = 1

let g:mapleader=","
"autocmd FileType go nmap <Leader>i <Plug>(go-info)
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)

" ------------------- python

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
