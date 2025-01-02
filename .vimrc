" load defaults
so $VIMRUNTIME/defaults.vim

" set fileencodings=cp1253,ucs-bom,utf-8,default,latin1
set fileencodings=ucs-bom,utf-8,default,latin1

autocmd BufNewFile,BufRead *.p? compiler perl

set nobackup

" journal of all my file edits in case I set backup on -- from https://geocar.sdf1.org/vim-hints.html
au BufWritePre * let &bex = '-' . strftime("%Y%m%d-%H%M%S") . '.vimbackup'

" daily.log timestamp abbreviation `log`
autocmd BufNewFile,BufRead daily.log iabbrev `log` <ESC>:r!date +"(\%V) \%Y-\%m-\%d \%R:\%S (\%Z \%:::z)\%n*"<CR>A
autocmd BufNewFile,BufRead daily.log iabbrev `tmts` <ESC>:r!date +"\%R:\%S"<CR>kJA
autocmd BufNewFile,BufRead daily.log nnoremap <leader>> :?^```?+1,/^```/-1s/^/    /<CR>
autocmd BufNewFile,BufRead daily.log nnoremap <leader>q :?^```?+1,/^```/-1s/^/   > /<CR>{jdd/^```$/<CR>D
autocmd BufNewFile,BufRead daily.log nnoremap <leader>l :r!date +"(\%V) \%Y-\%m-\%d \%R:\%S (\%Z \%:::z)\%n* "<CR>A
autocmd BufNewFile,BufRead daily.log nnoremap <leader>t :r!date +"\%R:\%S"<CR>kJA
autocmd BufNewFile,BufRead daily.log nnoremap <leader>s :r!date +"(\%V) \%Y-\%m-\%d \%R:\%S (\%Z \%:::z)\%n* "<CR>A#TODO_tag_this Current status:<CR><CR>```<CR>```<ESC>O<ESC>"+p:?^```?+1,/^```/-1s/^/    /<CR>{jdd/^```$/<CR>D{/ #<CR>wyiW? #TODO_tag_this<CR>pwdE}}
" autocmd BufNewFile,BufRead daily.log nnoremap <leader>s :?^```?+1,/^```/-1s/^/    /<CR>{jdd/^```$/<CR>D
autocmd BufNewFile,BufRead daily.log nnoremap <leader>t i<CR><ESC>:r! date +"\%R:\%S:\%S "<CR>kddp2kJJ
autocmd FileType java setlocal shiftwidth=4 tabstop=4 "expandtab
autocmd FileType csharp setlocal shiftwidth=4 tabstop=4 "expandtab
autocmd FileType cs setlocal shiftwidth=4 tabstop=4 "expandtab
autocmd FileType xml setlocal shiftwidth=3 tabstop=3 "expandtab
autocmd FileType perl setlocal shiftwidth=4 tabstop=4 "expandtab
imap kj <ESC>

let g:gruvbox_contrast_dark = 'hard'
set bg=dark
color gruvbox
