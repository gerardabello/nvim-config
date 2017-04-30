call plug#begin()

Plug 'tpope/vim-fugitive'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" colors
Plug 'whatyouhide/vim-gotham'
Plug 'morhetz/gruvbox'
Plug 'w0ng/vim-hybrid'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'fatih/vim-go'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'yarn global add tern' }
Plug 'zchee/deoplete-go', { 'do': 'make'}

Plug 'neomake/neomake'

Plug 'tpope/vim-surround'

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


"vim-go syntax options
let g:go_highlight_extra_types = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1

