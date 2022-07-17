autocmd BufEnter,BufNewFile * 
            \if getcwd() =~ "force-app/main/default" | 
            \ set path=.,classes/,aura/events*/      | 
            \endif 
