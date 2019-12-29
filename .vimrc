" load defaults
so $VIMRUNTIME/defaults.vim

autocmd BufNewFile,BufRead *.p? compiler perl

set nobackup

" journal of all my file edits in case I set backup on -- from https://geocar.sdf1.org/vim-hints.html
au BufWritePre * let &bex = '-' . strftime("%Y%m%d-%H%M%S") . '.vimbackup'
