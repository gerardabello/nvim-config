call plug#begin()

Plug 'airblade/vim-gitgutter'

" colors
Plug 'w0ng/vim-hybrid'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'sheerun/vim-polyglot'
"Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

Plug 'mileszs/ack.vim'

Plug 'tpope/vim-fugitive'

Plug 'w0rp/ale'

call plug#end()

" ALE
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'rust': ['cargo'],
\}

let g:ale_javascript_eslint_suppress_missing_config = 1
" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1
let g:ale_rust_cargo_use_clippy = 1

let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'rust': ['rustfmt'],
\}

" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1


"" FZF
nnoremap <Leader>p :FZF<CR>
nnoremap <Leader>o :Buffers<CR>

"" vim-jsx
let g:jsx_ext_required = 0

" ACK
if executable('rg')
  let g:ackprg = 'rg --vimgrep --no-heading'
endif
