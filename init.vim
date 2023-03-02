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

call plug#begin('C:\\nvim-data\\pluged')
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
call plug#end()

colorscheme gruvbox
let NERDTreeShowHidden = 1
lua require("toggleterm").setup()
