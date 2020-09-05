set termguicolors

set background=dark    " Setting dark mode

let g:spacegray_use_italics = 1
colorscheme spacegray

noremap ; :

nnoremap <Leader><Leader> :b#<CR>

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"" FZF
nnoremap <Leader>p :FZF<CR>
nnoremap <Leader>o :Buffers<CR>
nnoremap <Leader>f :ALEFix<CR>
nnoremap <Leader>g :Goyo<CR>


" ALE
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'javascriptreact': ['eslint'],
\   'typescript': ['tsserver', 'eslint'],
\   'typescriptreact': ['tsserver', 'eslint'],
\   'rust': ['cargo'],
\   'go': ['gobuild', 'golangci_lint'],
\}

let g:ale_javascript_eslint_suppress_missing_config = 1
" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1
let g:ale_rust_cargo_use_clippy = 1

let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   'javascriptreact': ['prettier', 'eslint'],
\   'typescript': ['prettier', 'eslint'],
\   'typescriptreact': ['prettier', 'eslint'],
\   'rust': ['rustfmt'],
\   'go': ['goimports'],
\}

" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
let g:ale_fix_on_save = 0
let g:ale_lint_on_save = 1

let g:ale_rust_cargo_check_all_targets = 1



let g:goyo_width = '120'
let g:goyo_height = '95%'
