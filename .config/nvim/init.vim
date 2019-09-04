set nocompatible 		    " disable compatibility with old-timey vi
set showmatch			    " show matching brackets
set ignorecase			    " case insensitive matching
set mouse=v			        " middle-click to paste with mouse
set hlsearch			    " highlight search results
set tabstop=4			    " number of columns occupied by a tab char
set softtabstop=4		    " see multiple spaces as tabstops so <BS> does the right thing
set expandtab			    " converts tabs to white space
set shiftwidth=4		    " width for autoindents
set autoindent			    " indent a new line the same amount as the line just typed
set number			        " add line numbers
set wildmode=longest,list	" get bash-like tab completions
set number relativenumber   " show line number for current line, relative around
set cc=80			        " set an 80 column border for good style
filetype plugin indent on	" allows auto-indenting depending on file type
syntax on			        " syntax highlighting

" netrw config
let g:netrw_banner=0       " Hide help banner
let g:netrw_liststyle=3    " Use tree view
let g:netrw_winsize=10     " smaller default window size
let g:netrw_altv=1         " splits to the left
let g:netrw_browse_split=4 " 
augroup ProjectDrawer
    autocmd!
    autocmd VimEnter * if argc() == 0 | :VExplore | endif
augroup END

" Easier mappings for faster travel
tnoremap <Esc> <C-\><C-n>   

