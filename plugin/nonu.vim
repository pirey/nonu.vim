" simple plugin to hide line number for specified filetypes
" because sometimes we don't care about the line number,
" and just want vim to looks nice

if exists('g:loaded_nonu')
    finish
endif

let g:loaded_nonu = 1

function! s:on_enter()
    silent! setlocal nonumber norelativenumber
endfunction

function! s:on_leave()
    " nothing for now
endfunction

function! s:main()
    let l:filetypes = get(g:, 'nonu_filetypes', [])
    let l:filetypes_str = join(l:filetypes, ',')

    if len(l:filetypes) <= 0
        return
    endif

    augroup nonu_nonu
        autocmd!
        execute 'autocmd! FileType ' . l:filetypes_str . ' call s:on_enter() | autocmd BufLeave <buffer> call s:on_leave()'
    augroup END
endfunction

call s:main()
