let mapleader="\<SPACE>"

set termguicolors

set background=dark    " Setting dark mode

let g:spacegray_use_italics = 1
colorscheme spacegray

noremap ; :

nnoremap <Leader><Leader> :b#<CR>

nnoremap <silent> <Leader>. :vertical resize +5<CR>
nnoremap <silent> <Leader>, :vertical resize -5<CR>


" Force typescript
autocmd BufNewFile,BufRead *.js set syntax=typescriptreact
autocmd BufNewFile,BufRead *.jsx set syntax=typescriptreact
autocmd BufNewFile,BufRead *.tsx set syntax=typescriptreact
autocmd BufNewFile,BufRead *.ts set syntax=typescriptreact

" VIMDIFF
nnoremap <silent> <Leader>dgl :diffget LOCAL<CR>
nnoremap <silent> <Leader>dgr :diffget REMOTE<CR>

"Diff local and base
nnoremap <silent> <Leader>dbl :diffo!<CR>:1windo difft<CR>:2windo difft<CR>
"Diff remote and base
nnoremap <silent> <Leader>dbr :diffo!<CR>:3windo difft<CR>:2windo difft<CR>

"Diff local and merged
nnoremap <silent> <Leader>dml :diffo!<CR>:1windo difft<CR>:4windo difft<CR>
"Diff remote and merged
nnoremap <silent> <Leader>dmr :diffo!<CR>:3windo difft<CR>:4windo difft<CR>

set diffopt="internal,filler,closeoff,iwhiteall,iwhite"

" FZF
nnoremap <Leader>p :FZF<CR>
nnoremap <Leader>o :Buffers<CR>


" LSP

set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

lua << EOF
  require'lspconfig'.gopls.setup{on_attach=require'completion'.on_attach}
  require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
  require'lspconfig'.rust_analyzer.setup{
    on_attach=require'completion'.on_attach,
    settings={
      ["rust-analyzer"] = {
        checkOnSave={
          command="clippy"
        }
      }
    }
  }
EOF

lua << EOF
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    -- This will disable virtual text, like doing:
    -- let g:diagnostic_enable_virtual_text = 0
    virtual_text = true,

    -- This is similar to:
    -- let g:diagnostic_show_sign = 1
    -- To configure sign display,
    --  see: ":help vim.lsp.diagnostic.set_signs()"
    signs = true,

    -- This is similar to:
    -- "let g:diagnostic_insert_delay = 1"
    update_in_insert = false,
  }
)
EOF

nnoremap <silent> KK :lua vim.lsp.buf.hover()<CR>
nnoremap <silent> KD :lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <silent> gd :lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gr :lua vim.lsp.buf.references()<CR>

command! Rename :lua vim.lsp.buf.rename()

" ALE

nnoremap <Leader>f :ALEFix<CR>

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'javascriptreact': ['eslint'],
\   'typescript': ['eslint'],
\   'typescriptreact': ['eslint'],
\   'go': ['custom_golangci_lint'],
\}

let g:ale_disable_lsp = 1
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
\   'go': ['gofmt', 'goimports'],
\}

" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
let g:ale_fix_on_save = 0
let g:ale_lint_on_save = 1

let g:ale_rust_cargo_check_all_targets = 1
