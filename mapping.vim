let mapleader=","

" spell checking:
map <silent> <F8> <Esc>:silent setlocal spl=fr spell<CR>
map <silent> <F9> <Esc>:silent setlocal spell spl=en_gb<CR>

"map <F7>:!aspell --encoding=utf-8 --lang fr-fr -c  %<CR>
"map <F8>:!aspell --encoding=utf-8 --lang en-gb -c  %<CR>
map <F10> <Esc>:setlocal nospell<CR>

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

" visualize undo tree
nnoremap <Leader>u :GundoToggle<CR>

" create pdf
nnoremap <Leader>pdf :! pandoc % -o %.pdf --latex-engine=xelatex --variable lang=french --variable libertine --variable monofont=Inconsolata --variable meta-author="Hugo Roy"<CR>
nnoremap <Leader>pdfen :! pandoc % -o %.pdf --latex-engine=xelatex --variable lang=english --variable libertine --variable monofont=Inconsolata  --variable meta-author="Hugo Roy"<CR>

" export to latex 
nnoremap <Leader>tex :! pandoc -o %.tex % --variable lang=french<CR>
nnoremap <Leader>texen :! pandoc -o %.tex % --variable lang=english<CR>

" export to latex standalone
nnoremap <Leader>Tex :! pandoc -o %.tex % --variable lang=french --standalone --variable libertine --variable monofont=Inconsolata --variable meta-author="Hugo Roy"<CR>
nnoremap <Leader>Texen :! pandoc -o %.tex % --variable lang=english --standalone --variable libertine --variable monofont=Inconsolata  --variable meta-author="Hugo Roy"<CR>


" create html
nnoremap <Leader>html :! pandoc % -o %.html --variable lang=fr --standalone --self-contained --smart -t html5 --email-obfuscation=references --section-divs<CR>
nnoremap <Leader>htmlen :! pandoc % -o %.html --variable lang=en --standalone --self-contained --smart -t html5 --email-obfuscation=references --section-divs<CR>

" create sildes
nnoremap <Leader>slid :! pandoc % -o %-beamer.pdf --latex-engine=xelatex --variable lang=french --standalone -t beamer<CR>
nnoremap <Leader>sliden :! pandoc % -o %-beamer.pdf --latex-engine=xelatex --variable lang=english --standalone -t beamer<CR>
