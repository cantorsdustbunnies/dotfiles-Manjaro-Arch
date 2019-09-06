if empty(glob('~/.local/share/nvim/site/autoload/plug.vim')) 
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync
endif

call plug#begin('~/.local/share/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'lambdalisue/vim-manpager'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'Yggdroot/indentLine'
Plug 'joshdick/onedark.vim'
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'szw/vim-tags'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'flazz/vim-colorschemes'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'vimwiki/vimwiki'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'epilande/vim-react-snippets'
Plug 'SirVer/ultisnips'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
call plug#end()

" general settings
set nocompatible
set nobackup
set nowritebackup
set noswapfile
set number
set mouse=a
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set nowrap
set cursorline
set termguicolors
set hidden
" syntax enable
filetype plugin on
" set guicursor=n-v-c-sm:ver25-blinkon0,i-ci-ve:ver25,r-cr-o:hor20

" onedark colorscheme
" let g:onedark_terminal_italics=1
" let g:onedark_termcolors=256
" let g:onedark_hide_endofbuffer=1
" if (has("autocmd") && !has("gui_running"))
"     augroup colorset
"         autocmd!
"         let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16": "7" }
"         autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white })
"     augroup END
" endif
" colorscheme onedark

hi Normal guibg=NONE ctermbg=NONE


"let g:purify_override_colors = {
    "\ 'pink': {'gui': '#FDFEFF', 'cterm': '231' }, 
    "\ 'green': {'gui': '#FF0874', 'cterm': '199' },
    "\ 'yellow': {'gui': '#0ABDC6', 'cterm': '123'}, 
    "\ 'salmon': {'gui': '#D00B5A', 'cterm': '196'}, 
    "\ 'red': {'gui': '#00FF00', 'cterm': '34'}, 
    "\ 'blue': {'gui': '#4D8BEE', 'cterm': '123'}, 
    "\ 'purple': {'gui': '#390979', 'cterm': '52'}, 
    "\ 'black': {'gui': '#23D5C', 'cterm': '62'}, 
    "\ 'white': {'gui': '#FF33FF', 'cterm': '72'}, 
    "\ 'dark_yellow': {'gui': '#FF33FF', 'cterm': '82'}, 
    "\ 'comment_grey': {'gui': '#FF33FF', 'cterm': '92'}, 
    "\ 'cursor_grey': {'gui': '#FF33FF', 'cterm': '102'}, 
    "\ 'gutter_grey_fg': {'gui': '#FF33FF', 'cterm': '112'}, 
    "\ 'blur_grey': {'gui': '#FF33FF', 'cterm': '122'}, 
    "\ 'menu_grey': {'gui': '#FF33FF', 'cterm': '132'}, 
    "\ 'visual_grey': {'gui': '#FF33FF', 'cterm': '142'}, 
    "\ 'visual_black': {'gui': '#FF33FF', 'cterm': '152'}, 
"\ }

syntax on 
" colorscheme shades_of_purple
colorscheme purify 

" make transparency work
" mappings
let mapleader=','

nnoremap <Leader>nn : NERDTreeToggle<cr>
nnoremap <C-L> :call BNext()<CR>
inoremap <C-L> <esc>:call BNext()<CR>
nnoremap <C-H> :call BPrev()<CR>
inoremap <C-H> <esc>:call BPrev()<CR>
nnoremap <C-D> :bp\|bd #<CR>
inoremap <C-D> <esc>:bp\|bd #<CR>
nnoremap <C-S> :w<CR>
vnoremap <C-S> <esc>:w<CR>
inoremap <C-S> <esc>:w<CR>
nnoremap <C-Q> :q<CR>
inoremap <C-Q> <esc>:q<CR>
vnoremap < <gv
vnoremap > >gv
nnoremap <C-A> ggVGG
vnoremap <C-A> ggVGG

" Ctrl + C to xclip
vnoremap <C-c> "+y

" vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/', 'css_name': 'darkdown.css', 'syntax': 'markdown', 'ext': '.md'}]


" vim_markdown_preview
" let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1
let g:mkdp_browser = 'surf'
" let g:mkdp_highlight_css = '/home/stelly/vimwiki/darkdown.css'

" indentLine/
let g:indentLine_char = '┊'

" vim-airline
let g:shades_of_purple_airline = 1
" let g:airline_theme='shades_of_purple'
let g:airline_theme='purify'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" nerdtree
let NERDTreeMinimalUI = 1
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '.git$']
let NERDTreeShowHidden = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" nerdcommenter
" let g:NERDSpaceDelims = 1
" nnoremap <C-_> :call NERDComment('Toggle', 'Toggle')<CR>
" inoremap <C-_> <esc>:call NERDComment('Toggle', 'Toggle')<CR>
" vnoremap <C-_> :call NERDComment('Toggle', 'Toggle')<CR>gv

" gitgutter
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_sign_added                     = '+'
let g:gitgutter_sign_modified                  = '±'
let g:gitgutter_sign_removed                   = '-'
let g:gitgutter_sign_removed_first_line        = '×'
let g:gitgutter_sign_modified_removed          = '×'

" vim-tags
let g:vim_tags_auto_generate = 1

" FZF
nnoremap <silent> <C-p> :call FZFOpen(':FZF')<CR>

" vim-devicons
let g:DevIconsEnableFoldersOpenClose = 1

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['json'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['jsx'] = 'ﰆ'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vim'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['yaml'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['yml'] = ''

let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*vimrc.*'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.gitignore'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['package.json'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['package.lock.json'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['node_modules'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['webpack\.'] = 'ﰩ'

let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1

" coc
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

let g:coc_global_extensions = [
    \ 'coc-json',
    \ 'coc-tsserver',
    \ 'coc-html',
    \ 'coc-emmet',
    \ 'coc-css',
    \ 'coc-python'
\ ]

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Some function Hacks to avaoid issue I face with NERDTree
function! BNext()
    if (expand('%') =~ 'NERD_tree')
        :exe "normal \<C-W>\<C-w>"
    endif
    :bn
endfunction

function! BPrev()
    if (expand('%') =~ 'NERD_tree')
        :exe "normal \<c-w>\<c-w>"
    endif
    :bp
endfunction

function! FZFOpen(command_str)
  if (expand('%') =~# 'NERD_tree' && winnr('$') > 1)
    exe "normal! \<c-w>\<c-w>"
  endif
  exe 'normal! ' . a:command_str . "\<cr>"
endfunction
