" vim:fileencoding=utf-8:foldmethod=marker

": AutoLoad VimPlugged {{{
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim')) 
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync
endif
" }}}

": VimPlugged Plugins{{{
call plug#begin('~/.local/share/nvim/plugged')
Plug 'jparise/vim-graphql'
Plug 'airblade/vim-gitgutter'
Plug 'lambdalisue/vim-manpager'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'epilande/vim-react-snippets'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-surround'
Plug 'kshenoy/vim-signature',
Plug 'nerdypepper/agila.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'haishanh/night-owl.vim'
Plug 'cocopon/iceberg.vim'
call plug#end()"}}}

 ": Set's{{{
set nocompatible
set nobackup
set nowritebackup
set noswapfile
set number relativenumber
set mouse=a
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set nowrap
set noshowmode
" set cursorline
" set cursorcolumn
set termguicolors
set hidden
" }}}

": Color Scheme {{{ 
filetype plugin on
" hi EndOfBuffer ctermfg=235
syntax enable 
" colorscheme purify
colorscheme agila
" colorscheme iceberg
hi Folded ctermbg=NONE guibg=NONE
hi Normal guibg=NONE ctermbg=NONE

" }}}

": OLD THEME onedark config{{{
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
" }}}

": OLD purify overide colors{{{
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
" }}}

": Mappings{{{
let mapleader=','

nnoremap <Leader>nn : NERDTreeToggle<cr>
nnoremap <C-L> :call BNext()<CR>
inoremap <C-L> <esc>:call BNext()<CR>
nnoremap <C-H> :call BPrev()<CR>
inoremap <C-H> <esc>:call BPrev()<CR>
nnoremap <Leader><C-D> :bp\|bd #<CR>
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
" }}}

": VimWiki Config{{{
let g:vimwiki_list = [{'path': '~/vimwiki/', 'css_name': 'darkdown.css', 'syntax': 'markdown', 'ext': '.md'}]
" }}}

": Vim Markdown Preview Config{{{
" uncomment below to auto-start surf when editing markdown files
" let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1
let g:mkdp_browser = 'surf'
" let g:mkdp_highlight_css = '/home/stelly/vimwiki/darkdown.css'
" }}}

": Indent Line{{{
let g:indentLine_char = '┊'
" }}}

": Vim-Airline Config{{{
let g:shades_of_purple_airline = 1
let g:airline_theme='zenburn'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"if (has("autocmd") && !has("gui_running"))
    "augroup colorset
        "autocmd!
        "let s:N3 = [ "#390979", "#ABB2BF", 241, 'NONE'  ]
        "autocmd ColorScheme * call purify#set_highlight("Normal, {"bg": s:N3 })
    "augroup END
"endif


 " }}}

": NerdTree Config{{{
let NERDTreeMinimalUI = 1
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '.git$']
let NERDTreeShowHidden = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }}}

": DISABLED NerdCommenter Settings{{{
" nerdcommenter
" let g:NERDSpaceDelims = 1
" nnoremap <C-_> :call NERDComment('Toggle', 'Toggle')<CR>
" inoremap <C-_> <esc>:call NERDComment('Toggle', 'Toggle')<CR>
" vnoremap <C-_> :call NERDComment('Toggle', 'Toggle')<CR>gv
" }}}

": GitGutter Settings{{{
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_sign_added                     = '+'
let g:gitgutter_sign_modified                  = '±'
let g:gitgutter_sign_removed                   = '-'
let g:gitgutter_sign_removed_first_line        = '×'
let g:gitgutter_sign_modified_removed          = '×'
" }}}

" Prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" vim-tags
let g:vim_tags_auto_generate = 1

" FZF
nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"


"nnoremap <silent> <C-p> :call FZFOpen(':FZF')<CR>



": Vim-DevIcons Settings{{{
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
" }}}

": COC Settings{{{

"inoremap <silent><expr> <TAB>
    "\ pumvisible() ? "\<C-n>" :
    "\ <SID>check_back_space() ? "\<TAB>" :
    "\ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"function! s:check_back_space() abort
    "let col = col('.') - 1
    "return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

let g:coc_global_extensions = [
    \ 'coc-json',
    \ 'coc-tsserver',
    \ 'coc-html',
    \ 'coc-emmet',
    \ 'coc-css',
    \ 'coc-python'
\ ]"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
"}}}


": Misc Functions and Remaps{{{
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Turn on syntax highlighting for bat test files
autocmd BufNewFile,BufRead *.bat set syntax=sh

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
" }}}


