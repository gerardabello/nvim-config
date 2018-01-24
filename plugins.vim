call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" colors
Plug 'w0ng/vim-hybrid'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'sheerun/vim-polyglot'
Plug 'jparise/vim-graphql'
Plug 'fleischie/vim-styled-components'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm i -g tern' }

Plug 'neomake/neomake'

Plug 'sbdchd/neoformat'

Plug 'tpope/vim-surround'

Plug 'mileszs/ack.vim'

call plug#end()


"" FZF
nnoremap <Leader>p :FZF<CR>
nnoremap <Leader>o :Buffers<CR>

"" vim-jsx
let g:jsx_ext_required = 0

"" neomake
" let g:neomake_verbose=3
let g:neomake_javascript_enabled_makers = ['standard']
let g:neomake_jsx_enabled_makers = ['standard']
autocmd! BufWritePost * Neomake


"""" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path = 1
" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" use tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
" Disable preview window on completetion
set completeopt-=preview

let g:deoplete#sources#ternjs#types = 1


"vim-go syntax options
let g:go_highlight_extra_types = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1

"vim-go autofmt
let g:go_fmt_autosave = 0


"NeoFormat
augroup fmt
  autocmd!
  autocmd BufWritePre * Neoformat
augroup END


let g:neoformat_run_all_formatters = 1
let g:neoformat_only_msg_on_error = 1

let g:neoformat_javascript_prettier = {
            \ 'exe': 'prettier-standard',
            \ 'stdin': 1
            \ }

let g:neoformat_javascript_standard = {
            \ 'exe': 'standard',
            \ 'args': ['--stdin','--fix','2>', '/dev/null', '|', 'cat'],
            \ 'stdin': 1
            \ }

let g:neoformat_enabled_javascript = ['standard']
let g:neoformat_enabled_json = ['prettier']
let g:neoformat_enabled_css = ['prettier']
let g:neoformat_enabled_scss = ['prettier']
let g:neoformat_enabled_go = ['goimports']

" ACK
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
