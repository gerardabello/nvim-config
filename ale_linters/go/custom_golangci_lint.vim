call ale#Set('go_custom_golangci_lint_options', '')
call ale#Set('go_custom_golangci_lint_executable', 'golangci-lint')
call ale#Set('go_custom_golangci_lint_package', 1)

function! ale_linters#go#custom_golangci_lint#GetCommand(buffer) abort
    let l:filename = expand('#' . a:buffer . ':t')
    let l:options = ale#Var(a:buffer, 'go_custom_golangci_lint_options')
    let l:lint_package = ale#Var(a:buffer, 'go_custom_golangci_lint_package')


    if l:lint_package
        return ale#path#BufferCdString(a:buffer)
        \   . ale#go#EnvString(a:buffer)
        \   . '%e run '
        \   .  l:options
    endif

    return ale#path#BufferCdString(a:buffer)
    \   . ale#go#EnvString(a:buffer)
    \   . '%e run '
    \   . ale#Escape(l:filename)
    \   . ' ' . l:options
endfunction

function! ale_linters#go#custom_golangci_lint#GetMatches(lines) abort
    let l:pattern = '\v^([a-zA-Z]?:?[^:]+):(\d+):?(\d+)?:?:?:?\s\*?(.+)$'

    return ale#util#GetMatches(a:lines, l:pattern)
endfunction

function! ale_linters#go#custom_golangci_lint#Handler(buffer, lines) abort
    let l:dir = expand('#' . a:buffer . ':p:h')
    let l:output = []

    for l:match in ale_linters#go#custom_golangci_lint#GetMatches(a:lines)
        " l:match[1] will already be an absolute path, output from
        " custom_golangci_lint
        call add(l:output, {
        \   'filename': ale#path#GetAbsPath(l:dir, l:match[1]),
        \   'lnum': l:match[2] + 0,
        \   'col': l:match[3] + 0,
        \   'type': 'E',
        \   'text': l:match[4],
        \})
    endfor

    return l:output
endfunction

call ale#linter#Define('go', {
\   'name': 'custom_golangci_lint',
\   'executable': {b -> ale#Var(b, 'go_custom_golangci_lint_executable')},
\   'command': function('ale_linters#go#custom_golangci_lint#GetCommand'),
\   'callback': 'ale_linters#go#custom_golangci_lint#Handler',
\   'lint_file': 1,
\})
