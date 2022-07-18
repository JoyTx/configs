let g:netrw_banner=0

" Keep the current directory and the browsing directory synced.
let g:netrw_keepdir = 0

let g:netrw_winsize=20

let g:netrw_localcopydircmd = 'cp -r'

hi! link netrwMarkFile Search

function! NetrwMapping()
  nmap <buffer> H u
  nmap <buffer> h -^
  nmap <buffer> l <CR>

  nmap <buffer> . gh
  nmap <buffer> P <C-w>z
  nmap <buffer> L L

  nmap <buffer> <silent> <Leader>dd :Lexplore<CR>
endfunction

augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END

nnoremap <silent><leader>dd :Lexplore %:p:h<CR>
nnoremap <silent><Leader>da :Lexplore<CR>
nnoremap <silent><Leader>du :Lexplore $URT<CR>
