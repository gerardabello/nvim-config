set termguicolors

let g:airline_theme='hybrid'
colorscheme hybrid
set background=dark    " Setting dark mode


"itallics
highlight Comment gui=italic
highlight Comment cterm=italic
highlight Type cterm=italic
highlight Type gui=italic

set relativenumber

noremap ; :

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
