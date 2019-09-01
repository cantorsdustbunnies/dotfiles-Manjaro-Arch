call plug#begin('~/.vim/plugged')

" always show line numbers
set number

" for learning vim 
Plug 'takac/vim-hardtime'
" for syntax highlighting
Plug 'sheerun/vim-polyglot'
" shades of purple color scheme
Plug 'Rigellute/shades-of-purple.vim'

let g:hardtime_default_on = 1
let g:hardtime_showmsg = 1

call plug#end()

colo shades_of_purple     
syntax on 
