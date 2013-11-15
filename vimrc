" Easy manipulation of runtime, path, tags, etc 
" https://github.com/tpope/vim-pathogen/ 
execute pathogen#infect() 
filetype plugin indent on

set nocompatible   " i don't care about vi legacy

syntax on          " syntax highlighting
set nu             " line numbers
set lbr            " line breaking - line wraps
set guifont=Inconsolata\ Medium\ 14 
set mouse=a        " pointer support
set scrolloff=3    " set number of line to show
set cursorline
set ruler
set colorcolumn=90
set laststatus=2
set backspace=indent,eol,start " retours arrières intelligents
set undofile       "tells Vim to create <FILENAME>.un~ files whenever you edit a file. These files contain undo information so you can undo previous actions even after you close and reopen a file
set undodir=~/.vim/undo
"set directory=~/.vim/swaps

"let me copy/paste from any vim instance to any other app
set clipboard=unnamed

"UTF-8 everywhere
set fileencoding=utf-8

" tabs and indents
set expandtab      " conversion des tabulations en espaces
set shiftwidth=4   " a tab is four spaces
set softtabstop=4
set autoindent	   " always set autoindenting on

" searching
set hlsearch       " highlight matches
set incsearch      " incremental searching
set ignorecase     " searches are case insensitive...
set smartcase      " ... unless they contain at least one capital letter

color molokai

"if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
"endif


"python from powerline.bindings.vim import source_plugin; source_plugin()
"set rtp+=~/.vim/bundle/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'


" adding line breaking:
autocmd BufEnter *.md set textwidth=66	" to make lines breaks after n char
autocmd BufEnter *.mdwn set textwidth=66	" to make lines breaks after n char
autocmd BufEnter /tmp/mutt/* set textwidth=66
autocmd BufEnter ~/.mutt/tmp/* set textwidth=66

" some more fileformats handling
autocmd BufEnter *.muttrc set filetype=muttrc
autocmd BufEnter *.less set filetype=css
autocmd BufEnter *.rss set filetype=xml

" save the file when you lose focus
au FocusLost * :wa

" vim gets back to where the pointer was
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

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

"remap jj to escape key
inoremap jj <Esc>

" Reselect visual block after indent/outdent 
vnoremap < <gv
vnoremap > >gv

" make arrows behave like gui text editor
nnoremap <up> gk
nnoremap <down> gj
inoremap <up> <C-O>gk
inoremap <down> <C-O>gj
vnoremap <up> gk
vnoremap <down> gj


" save
"inoremap <C-S> <C-O>:w

" for email:  unfold and delete to your signature
noremap ,dd zi:.;/^-- $/d<CR>O-- <UP><End><CR><CR><UP><CR><C-O>zi



" https://bitbucket.org/joedicastro/vim-markdown-extra-preview/overview
let g:VMEPextensions = ['extra', 'meta']
let g:VMEPtemplate = 'hugo.html'
"let g:VMEPstylesheet = 'hugo.css'
au BufEnter /tmp/mutt/* let  g:VMEPtemplate = 'mutt.html'
au BufEnter ~/.mutt/tmp/* let  g:VMEPtemplate = 'mutt.html'


" abbreviations
iab courcass Cour de cassation
iab consdeta Conseil d’État
iab conscons Conseil constitutionnel
iab OEBB Office européen des brevets
iab courdapp Cour d’appel
iab DII dommages-intérêts
iab USAA États-Unis
iab gavv garde à vue

" shortcuts
iab <expr> DATEE strftime("%FT%T%z")  

" utf8
iab I. Ⅰ
iab II. Ⅱ
iab III. Ⅲ
iab IV. Ⅳ
iab vV. Ⅴ
iab VI. Ⅵ
iab VII. Ⅶ
iab VIII.  Ⅷ
iab IX. Ⅸ
iab xX. Ⅹ
iab XI. Ⅺ
iab XII. Ⅻ
iab XIII. ⅩⅢ
iab XIV. ⅩⅣ
iab XV. ⅩⅤ
iab XVI. ⅩⅥ
iab lL. Ⅼ
iab cC. Ⅽ
iab dD. Ⅾ
iab mM. Ⅿ
iab :-) ☺
iab :)) ☻
iab :-D 😃
iab :-3 😍
iab ^^ 😊
iab :-( ☹
iab :-O 😵
iab :-/ 😏
iab :-P 😋
iab :-S 😖
iab cofffee ☕
iab <3 ♥
iab §! ¶
