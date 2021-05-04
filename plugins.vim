call plug#begin()

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-fugitive'

Plug 'junegunn/goyo.vim'

" colors
Plug 'ackyshake/Spacegray.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

"Plug 'sheerun/vim-polyglot'

Plug 'mileszs/ack.vim'

Plug 'w0rp/ale'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

call plug#end()

"" vim-jsx
let g:jsx_ext_required = 0

" ACK
if executable('rg')
  let g:ackprg = 'rg --vimgrep --no-heading'
endif


