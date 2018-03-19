call plug#begin()

Plug 'airblade/vim-gitgutter'

" colors
Plug 'w0ng/vim-hybrid'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components'

Plug 'mileszs/ack.vim'

call plug#end()

"" FZF
nnoremap <Leader>p :FZF<CR>
nnoremap <Leader>o :Buffers<CR>

"" vim-jsx
let g:jsx_ext_required = 0

" ACK
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
