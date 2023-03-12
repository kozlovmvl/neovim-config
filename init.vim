set mouse=a
set encoding=utf-8
set number
set noswapfile
set scrolloff=7

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
noremap tt :NERDTreeRefreshRoot<CR> :NERDTreeToggle<CR>
noremap rr :ToggleTerm<CR>

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'dense-analysis/ale'
Plug 'rust-lang/rust.vim'
call plug#end()

colorscheme gruvbox
let NERDTreeShowHidden = 1
lua require("toggleterm").setup()
let g:ale_linters = {'rust': ['analyzer'], 'python': 'all'}
let g:ale_fixers = {
            \'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'],
            \'python': ['isort', 'yapf', 'remove_trailing_lines', 'trim_whitespace']
            \}
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1
nnoremap <C-LeftMouse> :ALEGoToDefinition<CR>
