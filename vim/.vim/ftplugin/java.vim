compiler javac
nnoremap <buffer> <space> :silent make % <bar> redraw!<CR>

nnoremap <buffer> <silent> <leader>r :call RunCode(expand("%:r"), winnr())<cr>
function RunCode(fname, wnum)
    if !bufexists("console")
        exe "10new console"
        setlocal noswapfile nornu bufhidden=hide buftype=nofile
        exe "%delete"
        exe a:wnum . "wincmd w"
    endif
    let output = system("java " . a:fname)
    call appendbufline(bufname("console"), ".", output)
endfunction

