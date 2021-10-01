call plug#begin()
" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-fugitive'

" colors
Plug 'ackyshake/Spacegray.vim'

"Plug 'sheerun/vim-polyglot'

Plug 'w0rp/ale'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

call plug#end()

"" vim-jsx
let g:jsx_ext_required = 0
