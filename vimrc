set nocompatible

call plug#begin()

Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

"Plug 'liuchengxu/vista.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'lambdalisue/battery.vim'

"Plug 'dominikduda/vim_current_word'
Plug 'RRethy/vim-illuminate'

Plug 'sainnhe/sonokai'
Plug 'sainnhe/edge'

"Plug 'junegunn/vim-easy-align'

Plug 'vim-scripts/DrawIt'
Plug 'Yggdroot/vim-mark'

Plug 'mg979/vim-visual-multi'

Plug 'ervandew/SuperTab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'jiangmiao/auto-pairs'

" git
Plug 'airblade/vim-gitgutter'


" lsp
Plug 'dense-analysis/ale'

" debug
Plug 'puremourning/vimspector'

Plug 'jparise/vim-graphql'
" Plug 'tsandall/vim-rego'

" game
Plug 'vim/killersheep'


" Plug 'rust-lang/rust.vim'

call plug#end()


set t_Co=256
set ts=4
set nu

" mouse
set mouse=a
set mousemodel=popup_setpos

" ['|', '¦', '┆', '┊']
set list lcs=tab:\|\ 
"set list lcs=tab:\┊\
set cc=120

set incsearch
set wildmode=longest,list,full

set cursorline
set cursorcolumn

filetype plugin indent on
syn on

" -------------------- color
"  Available values:   `'default'`, `'atlantis'`, `'andromeda'`, `'shusia'`, `'maia'`, `'espresso'`
let g:sonokai_style = 'default'
let g:sonokai_diagnostic_line_highlight = 1
let g:sonokai_enable_italic = 1
let g:airline_theme = 'sonokai'
let g:sonokai_better_performance = 1
let g:sonokai_current_word = 'underline'

colorscheme sonokai

"
let g:mapleader=","

" go syntx
let g:go_highlight_functions = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
" python syntx
let python_highlight_all = 1

" Lf
let g:Lf_WindowPosition = 'popup'
let g:Lf_ShortcutF = '<C-P>'

" clap
"let g:clap_plugin_experimental = v:true

" ale
let g:ale_fixers = {
\ 'rust': ['rustfmt','remove_trailing_lines','trim_whitespace'],
\ 'python': ['black', 'isort', 'autoflake', 'autoimport','remove_trailing_lines','trim_whitespace','add_blank_lines_for_python_control_statements'],
\ 'go': ['gopls', 'goimports', 'gofmt', 'remove_trailing_lines','trim_whitespace'],
\}

let g:ale_linters = {
\ 'rust': ['analyzer', 'cargo'],
\ 'python': ['flake8','mypy','pyright', 'pycodestyle'],
\ 'go': ['gopls', 'golangci-lint', 'staticcheck'],
\ }

let g:ale_sign_column_always = 1
"let g:ale_change_sign_column_color = 1
let g:ale_popup_menu_enabled = 1

let g:ale_virtualtext_cursor = 'current'
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1

let g:ale_set_balloons = 1
let g:ale_hover_to_floating_preview = 1

let g:ale_lsp_suggestions = 1

let g:airline#extensions#ale#enabled = 1
"let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰', '│', '─']

nmap <silent> gd <Plug>(ale_go_to_definition)
nmap <silent> gi <Plug>(ale_go_to_implementation)
nmap <silent> gr <Plug>(ale_find_references)
nmap <silent> gt <Plug>(ale_go_to_type_definition)

nmap <silent> K <Plug>(ale_hover)

set completeopt=menu,menuone,popup,noselect,noinsert
set omnifunc=ale#completion#OmniFunc
"let g:airline#extensions#tabline#enabled = 1

