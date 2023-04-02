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
noremap rr :ToggleTerm<CR>
noremap tt :NvimTreeToggle

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'dense-analysis/ale'
Plug 'rust-lang/rust.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
call plug#end()

colorscheme gruvbox
lua require("toggleterm").setup()
lua require("nvim-web-devicons").setup()
lua require("nvim-tree").setup()
lua vim.opt.termguicolors = true
lua vim.g.loaded_netrw = 1
lua vim.g.loaded_netrwPlugin = 1
let g:ale_linters = {'rust': ['analyzer'], 'python': 'all'}
let g:ale_fixers = {
            \'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'],
            \'python': ['isort', 'yapf', 'remove_trailing_lines', 'trim_whitespace']
            \}
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1
nnoremap <C-LeftMouse> :ALEGoToDefinition<CR>

nnoremap ff :Telescope find_files<cr>
nnoremap fg :Telescope live_grep<cr>
nnoremap fb :Telescope buffers<cr>
nnoremap fh :Telescope help_tags<cr>
