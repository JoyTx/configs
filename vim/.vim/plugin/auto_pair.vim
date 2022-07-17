inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ' ''<Left>
inoremap " ""<Left>
inoremap < <><Left>
inoremap <expr> <CR>
            \ getline(".")[col(".")-2:col(".")-1]=="{}" ? "<CR><c-o>O"
            \ :                                           "<CR>"
inoremap <expr> <BACKSPACE>
            \ index(["{}","()","[]","''",'""',"<>"], getline(".")[col(".")-2:col(".")-1]) != -1
            \ ? "<DEL><BACKSPACE>"
            \ : "<BACKSPACE>"
