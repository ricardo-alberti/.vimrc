set wildmode=list:longest
set nowrap

set history=100
set scrolloff=10

colorscheme torte

syntax on
set autoindent
set shiftwidth  =2
set expandtab
set tabstop=2
set nocompatible

filetype on
filetype plugin on
filetype indent on

set number relativenumber
set splitbelow splitright

map <C-h> <C-w>h 
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l 

set encoding=utf8

let g:NERDTreeShowHidden=1 
let g:NERDSpaceDelims = 1
let g:NERDTreeGitStatusUseNerdFonts = 1 
let g:NERDTreeWinPos = 'right'
map <C-n> :NERDTreeToggle<cr>

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'junegunn/vim-easy-align'
Plug 'Dense-Analysis/Ale'
Plug 'Pangloss/Vim-Javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_linters = {
	\ ‘javascript’: [‘eslint’],
	\ ‘typescript’: [‘tsserver’, ‘tslint’]
\ }

if isdirectory(‘./node_modules’) && 
isdirectory(‘./node_modules/eslint’)

let g:coc_global_extensions += [‘coc-eslint’]

endif
