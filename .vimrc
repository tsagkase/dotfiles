" load defaults
so $VIMRUNTIME/defaults.vim

autocmd BufNewFile,BufRead *.p? compiler perl

set nobackup

" journal of all my file edits in case I set backup on -- from https://geocar.sdf1.org/vim-hints.html
au BufWritePre * let &bex = '-' . strftime("%Y%m%d-%H%M%S") . '.vimbackup'

" daily.log timestamp abbreviation `log`
autocmd BufNewFile,BufRead daily.log iabbrev `log` <ESC>:r!date +"(\%V) \%Y-\%m-\%d \%R:\%S (\%Z \%:::z)\%n*"<CR>A
autocmd BufNewFile,BufRead daily.log iabbrev `tmts` <ESC>:r!date +"\%R:\%S"<CR>kJA
autocmd FileType java setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType csharp setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType xml setlocal shiftwidth=3 tabstop=3 expandtab
