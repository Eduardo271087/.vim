set shiftwidth=4   " a tab is four spaces
set softtabstop=4

" adding line breaking:
autocmd BufEnter *.md set textwidth=66	" to make lines breaks after n char
autocmd BufEnter *.mdwn set textwidth=66	" to make lines breaks after n char
autocmd BufEnter /tmp/mutt/* set textwidth=66
autocmd BufEnter ~/.mutt/tmp/* set textwidth=66

" some more fileformats handling
autocmd BufEnter *.muttrc set filetype=muttrc
autocmd BufEnter *.less set filetype=css
autocmd BufEnter *.rss set filetype=xml

" for email:  unfold and delete to your signature
noremap ,dd zi:.;/^-- $/d<CR>O-- <UP><End><CR><CR><UP><CR><C-O>zi

