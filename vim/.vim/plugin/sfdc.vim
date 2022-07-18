autocmd BufEnter,BufNewFile * 
            \if getcwd() =~ "force-app/main/default" | 
            \ setlocal path=.,classes/,aura/events*/ |
            \ setlocal wildignore=*meta.xml,*.json   | 
            \endif 
