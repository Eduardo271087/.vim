
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





