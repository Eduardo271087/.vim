" Easy manipulation of runtime, path, tags, etc 
execute pathogen#infect() 
syntax on " syntax highlighting
filetype plugin indent on

set nocompatible

set nu " line numbers
set lbr " line breaking - line wraps
set guifont=Inconsolata\ Medium\ 12 " font
set mouse=a " pointer support
set scrolloff=3 " set number of line to show
set cursorline
set ruler
set colorcolumn=90
set laststatus=2
set backspace=indent,eol,start " retours arrières intelligents
set undofile "tells Vim to create <FILENAME>.un~ files whenever you edit a file. These files contain undo information so you can undo previous actions even after you close and reopen a file
set undodir=~/.vim/undo
"set directory=~/.vim/swaps

if has('gui_running') 
    color solarized 
else 
    color molokai
endif

"if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
"endif


"python from powerline.bindings.vim import source_plugin; source_plugin()
"set rtp+=~/.vim/bundle/powerline/bindings/vim

let g:Powerline_symbols = 'fancy'

"let me copy/paste from any vim instance to any other app
set clipboard=unnamed

"UTF-8 everywhere
set fileencoding=utf-8


" adding line breaking:
autocmd BufEnter *.md set textwidth=66	" to make lines breaks after n char
autocmd BufEnter /tmp/mutt/* set textwidth=66
autocmd BufEnter ~/.mutt/tmp/* set textwidth=66

" tabs and indents
set expandtab " conversion des tabulations en espaces
set shiftwidth=4
set softtabstop=4
set autoindent	" always set autoindenting on

" spell checking:
map <silent> <F7> <Esc>:silent setlocal spl=fr spell<CR>
map <silent> <F8> <Esc>:silent setlocal spell spl=en_gb<CR>
map <silent> <F9> <Esc>:silent setlocal spell spl=de<CR>

"map <F7>:!aspell --encoding=utf-8 --lang fr-fr -c  %<CR>
"map <F8>:!aspell --encoding=utf-8 --lang en-gb -c  %<CR>
map <F12> <Esc>:setlocal nospell<CR>

"autocmd BufEnter *.md  !aspell --encoding=utf-8 --lang fr-fr -c 
"autocmd BufEnter *fr.* !aspell --encoding=utf-8 --lang fr-fr -c  
"autocmd BufEnter *en.* !aspell --encoding=utf-8 --lang en-gb -c 

" abbreviations

iab courcass Cour de cassation
iab consdeta Conseil d'État
iab conscons Conseil constitutionnel
iab OEBB Office européen des brevets
iab courdapp Cour d'appel
iab DII dommages et intérêts
iab USAA États-Unis
iab I. Ⅰ
iab II. Ⅱ
iab III. Ⅲ
iab IV. Ⅳ
iab V. Ⅴ
iab VI. Ⅵ
iab VII. Ⅶ
iab VIII.  Ⅷ
iab IX. Ⅸ
iab X. Ⅹ
iab XI. Ⅺ
iab XII. Ⅻ


" vim gets back to where the pointer was
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" save the file when you lose focus
au FocusLost * :wa

" https://bitbucket.org/joedicastro/vim-markdown-extra-preview/overview
let g:VMEPextensions = ['extra', 'meta']
let g:VMEPtemplate = 'hugo.html'
let g:VMEPstylesheet = 'hugo.css'

