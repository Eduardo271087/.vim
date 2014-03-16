set nocompatible   " i don't care about vi legacy

" Easy manipulation of runtime, path, tags, etc 
" https://github.com/tpope/vim-pathogen/ 
execute pathogen#infect() 


set undofile       "tells Vim to create <FILENAME>.un~ files whenever you edit a file. These files contain undo information so you can undo previous actions even after you close and reopen a file
set undodir=~/.vim/undo
"set directory=~/.vim/swaps

"let me copy/paste from any vim instance to any other app
set clipboard=unnamedplus

"UTF-8 everywhere
set fileencoding=utf-8
