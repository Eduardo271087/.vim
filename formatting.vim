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
noremap ,dd zi:.;/^-- /d<CR>O<Home>-- <UP><End><CR><CR><UP><CR><C-O>zi
"noremap ,dd :.;/^-- $/dO-- 


let g:pencil#wrapModeDefault = 'hard'   " or 'hard' 
let g:pencil#textwidth = 66 
let g:pencil#autoformat = 0      " 0=manual, 1=auto
let g:pencil#joinspaces = 0

augroup pencil
    autocmd!
    autocmd FileType markdown call pencil#init()
    autocmd FileType textile call pencil#init()
    autocmd FileType text call pencil#init({'wrap': 'hard'})
    autocmd BufEnter /tmp/mutt/* call pencil#init({'wrap': 'hard'})
    autocmd BufEnter ~/.mutt/tmp/* call pencil#init({'wrap': 'hard'})
augroup END


augroup litecorrect
    autocmd!
    autocmd FileType markdown call litecorrect#init()
    autocmd FileType textile call litecorrect#init()
    autocmd BufEnter /tmp/mutt/* call litecorrect#init()
    autocmd BufEnter ~/.mutt/tmp/* call litecorrect#init()
augroup END
