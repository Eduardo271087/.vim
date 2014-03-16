"if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
"endif

set nuw=10
set guifont=Inconsolata-dz\ for\ Powerline\ 14

"color molokai

"set colorcolumn=80

color pencil

autocmd BufEnter /tmp/mutt/* set background=dark
autocmd BufEnter ~/.mutt/tmp/* set background=dark



"python from powerline.bindings.vim import source_plugin; source_plugin()
"set rtp+=~/.vim/bundle/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'


