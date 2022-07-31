augroup CommentSupport
    autocmd!
    autocmd FileType           vim         let b:CT_EOL_COMMENT = get(b:, 'CT_EOL_COMMENT', '"')
    autocmd FileType           apex        let b:CT_EOL_COMMENT = get(b:, 'CT_EOL_COMMENT', '//')
    autocmd BufNewFile,BufRead *.vim,vimrc let b:CT_EOL_COMMENT = get(b:, 'CT_EOL_COMMENT', '"')
augroup END

function ToggleComment()
"    call inputsave()
    let comment_char = exists('b:CT_EOL_COMMENT') ? b:CT_EOL_COMMENT : '#'

    let currline = getline('.')

    if currline =~ '^\s*'.comment_char
        let replaceline = substitute(currline, '^\s*\zs'.comment_char.'\s*', '', '')
        call setline('.', replaceline)
    else
        let replaceline = substitute(currline, '^\s*\zs', comment_char.' ', '')
        call setline('.', replaceline)
    endif
"    call inputrestore()
endfunction
