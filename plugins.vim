call plug#begin()

Plug 'airblade/vim-gitgutter'

Plug 'junegunn/goyo.vim'

" colors
Plug 'ajh17/Spacegray.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'sheerun/vim-polyglot'
"Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

Plug 'mileszs/ack.vim'

Plug 'tpope/vim-fugitive'

Plug 'w0rp/ale'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"" vim-jsx
let g:jsx_ext_required = 0

" ACK
if executable('rg')
  let g:ackprg = 'rg --vimgrep --no-heading'
endif


" Force typescript
autocmd BufNewFile,BufRead *.js set syntax=typescriptreact
autocmd BufNewFile,BufRead *.jsx set syntax=typescriptreact
autocmd BufNewFile,BufRead *.tsx set syntax=typescriptreact
autocmd BufNewFile,BufRead *.ts set syntax=typescriptreact
