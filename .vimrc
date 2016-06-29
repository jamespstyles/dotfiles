
set background=dark
colorscheme desert

" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

syntax on
set nu
set autoindent
set expandtab
" set noexpandtab to switch to tabs like a freak
set tabstop=2
set shiftwidth=2
set ic


command Sudow w !sudo tee % >/dev/null

" Remap :W to :w
command W w
command Wq wq

"PHP/HTML
au BufRead,BufNewFile *.php set ft=php.html

set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

