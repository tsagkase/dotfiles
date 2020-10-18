if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  " Uncomment to have 'bomb' on by default for new files.
  " Note, this will not apply to the first, empty buffer created at Vim startup.
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

" load defaults
so $VIMRUNTIME/defaults.vim

autocmd BufNewFile,BufRead *.p? compiler perl

set nobackup

" journal of all my file edits in case I set backup on -- from https://geocar.sdf1.org/vim-hints.html
au BufWritePre * let &bex = '-' . strftime("%Y%m%d-%H%M%S") . '.vimbackup'

" daily.log timestamp abbreviation `log`
autocmd BufNewFile,BufRead daily.log iabbrev `log` <ESC>:r!date +"(\%V) \%Y-\%m-\%d \%R:\%S (\%Z \%:::z)\%n*"<CR>A
