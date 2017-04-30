set termguicolors

let g:airline_theme='hybrid'
colorscheme hybrid
set background=dark    " Setting dark mode


"itallics
highlight Comment gui=italic
highlight Comment cterm=italic
highlight Type cterm=italic
highlight Type gui=italic


"this maps F10 to know the syntax group under the cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

set relativenumber

noremap ; :

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
