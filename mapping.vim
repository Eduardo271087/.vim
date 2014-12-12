let mapleader=","

" spell checking:
nnoremap <silent> <F8> <Esc>:silent setlocal spl=fr spell<CR>
nnoremap <silent> <F9> <Esc>:silent setlocal spell spl=en_gb<CR>
inoremap <silent> <F8> <C-O>:silent setlocal spl=fr spell<CR>
inoremap <silent> <F9> <C-O>:silent setlocal spell spl=en_gb<CR>

"map <F7>:!aspell --encoding=utf-8 --lang fr-fr -c  %<CR>
"map <F8>:!aspell --encoding=utf-8 --lang en-gb -c  %<CR>
map <F10> <Esc>:setlocal nospell<CR>

"autocmd BufEnter *.md  !aspell --encoding=utf-8 --lang fr-fr -c 
"autocmd BufEnter *fr.* !aspell --encoding=utf-8 --lang fr-fr -c  
"autocmd BufEnter *en.* !aspell --encoding=utf-8 --lang en-gb -c 

"remap jj to escape key
inoremap jj <Esc>

"remap ctrl cotrl to escape key
inoremap <C-> <Esc>

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


" comment in markdown/html
vnoremap <Leader>comm <esc>0i<!--<esc>A--><esc> 


" create pdf
" ugly,
" nhttps://www.google.com/a/openinventionnetwork.com/ServiceLogin?service=wise&amp;passive=1209600&amp;continue=https://docs.google.com/a/openinventionnetwork.com/document/d/1togcdBOihtcXb0Vhf8JgO7TvEshSGiTWtWGfrwAJWXQ/export?format%3Dtxt%26id%3D1togcdBOihtcXb0Vhf8JgO7TvEshSGiTWtWGfrwAJWXQ%26token%3DAC4w5VhgD7rkt5eRl0wbdFOzJDYwe0SURwjmeta.md3A1404990625751&amp;followup=https://docs.google.com/a/openinventionnetwork.com/document/d/1togcdBOihtcXb0Vhf8JgO7TvEshSGiTWtWGfrwAJWXQ/export?format%3Dtxt%26id%3D1togcdBOihtcXb0Vhf8JgO7TvEshSGiTWtWGfrwAJWXQ%26token%3DAC4w5VhgD7rkt5eRl0wbdFOzJDYwe0SURwjmeta.md3A1404990625751&amp;ltmpl=docseed to fix
nnoremap <Leader>pdf :! pandoc %.tmp -o %.pdf --latex-engine=xelatex --variable lang=french --variable libertine --variable monofont=Inconsolata --variable meta-author="Hugo Roy" --filter=fr-xelatex<CR>
nnoremap <Leader>pdfg :! pandoc %.tmp -o %.pdf --latex-engine=xelatex --variable lang=french --variable garamond --variable meta-author="Hugo Roy" --filter=fr-xelatex<CR>

nnoremap <Leader>pdfen :! pandoc % -o %.pdf --latex-engine=xelatex --variable lang=english --variable libertine --variable monofont=Inconsolata  --variable meta-author="Hugo Roy"<CR>
nnoremap <Leader>pdfgen :! pandoc % -o %.pdf --latex-engine=xelatex --variable lang=english --variable garamond  --variable meta-author="Hugo Roy"<CR>

" export to latex 
nnoremap <Leader>tex :! pandoc %.tmp -o %.tex --variable lang=french --filter=fr-xelatex<CR>
nnoremap <Leader>texen :! pandoc -o %.tex % --variable lang=english<CR>

" export to latex standalone
nnoremap <Leader>Tex :! pandoc %.tmp -o %.master.tex --variable lang=french --standalone --variable libertine --variable monofont=Inconsolata --variable meta-author="Hugo Roy" --filter=fr-xelatex<CR>
nnoremap <Leader>Texen :! pandoc -o %.master.tex % --variable lang=english --standalone --variable libertine --variable monofont=Inconsolata  --variable meta-author="Hugo Roy"<CR>

" create html
nnoremap <Leader>html :! pandoc % -o %.html --variable lang=fr --standalone --self-contained --smart -t html5 --email-obfuscation=references --section-divs<CR>
nnoremap <Leader>htmlen :! pandoc % -o %.html --variable lang=en --standalone --self-contained --smart -t html5 --email-obfuscation=references --section-divs<CR>

" create odt
nnoremap <Leader>odt :! pandoc %.tmp -o %.odt --variable lang=french --variable meta-author="Hugo Roy" --filter=fr-xelatex<CR>
nnoremap <Leader>odten :! pandoc -o %.odt % --variable lang=english --variable meta-author="Hugo Roy"<CR>

" create sildes
nnoremap <Leader>slid :! pandoc %.tmp -o %-beamer.pdf --latex-engine=xelatex --variable lang=french --standalone -t beamer --filter=fr-xelatex<CR>
nnoremap <Leader>sliden :! pandoc % -o %-beamer.pdf --latex-engine=xelatex --variable lang=english --standalone -t beamer<CR>

" create html slidse
nnoremap <Leader>reveal :! pandoc % -o %.revealjs.html --variable lang=fr --standalone --smart -t revealjs --email-obfuscation=references --variable theme=solarized<CR>
nnoremap <Leader>revealen :! pandoc % -o %.revealjs.html --variable lang=en --standalone --smart -t revealjs --email-obfuscation=references --variable theme=solarized<CR>

