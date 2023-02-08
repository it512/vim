set nocompatible

call plug#begin()

Plug 'fatih/vim-go'
Plug 'majutsushi/tagbar'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Plug 'flazz/vim-colorschemes'
Plug 'crusoexia/vim-monokai'
Plug 'morhetz/gruvbox'
"Plug 'sjl/badwolf'
Plug 'Lokaltog/vim-distinguished'
Plug 'nanotech/jellybeans.vim'
Plug 'tpope/vim-vividchalk'
Plug 'junegunn/seoul256.vim'


Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-scripts/DrawIt'
Plug 'Yggdroot/vim-mark'

Plug 'mg979/vim-visual-multi'

Plug 'ervandew/SuperTab'

Plug 'airblade/vim-gitgutter'

Plug 'preservim/nerdtree'
"Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'

"Plug 'dense-analysis/ale'
"Plug 'bufbuild/vim-buf'

Plug 'puremourning/vimspector'

Plug 'jparise/vim-graphql'

" game
Plug 'vim/killersheep'
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

" -------------------- color
set background=dark
"colorscheme koehler
"colorscheme monokai
"colorscheme gruvbox
"colorscheme badwolf
colorscheme jellybeans


let g:go_highlight_functions = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1

let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_doc_popup_window = 1

let g:mapleader=","
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>r <Plug>(go-run-vertical)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <Leader>e <Plug>(go-rename)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-iferr)

" ale
let g:ale_fixers = {
\  'python': ['yapf', 'isort', 'autoflake', 'autoimport', 'remove_trailing_lines', 'trim_whitespace'],
\}

"let g:ale_fix_on_save = 1
"let g:ale_completion_enabled = 1

"let g:airline#extensions#ale#enabled = 1

"set omnifunc=ale#completion#OmniFunc
