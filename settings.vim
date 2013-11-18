
filetype plugin indent on

syntax on          " syntax highlighting
set nu             " line numbers
set lbr            " line breaking - line wraps
set mouse=a        " pointer support
set scrolloff=3    " set number of line to show
set cursorline
set ruler
set colorcolumn=90
set laststatus=2
set backspace=indent,eol,start " retours arrières intelligents

" tabs and indents
set expandtab      " conversion des tabulations en espaces
set autoindent	   " always set autoindenting on

" searching
set hlsearch       " highlight matches
set incsearch      " incremental searching
set ignorecase     " searches are case insensitive...
set smartcase      " ... unless they contain at least one capital letter

" save the file when you lose focus
au FocusLost * :wa

" vim gets back to where the pointer was
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
