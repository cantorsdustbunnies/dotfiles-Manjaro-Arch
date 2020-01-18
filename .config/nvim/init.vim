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

Plug 'Sirver/ultisnips'
Plug 'Konfekt/vim-alias'
Plug 'lambdalisue/suda.vim'
": Color Schemes {{{
"Plug 'wallysslima/agua' " `The Beautiful vim theme no color scheme.`
"Plug 'joshdick/onedark.vim' "['#282C34', '#E06C75', '#98C379', '#E5C07B', '#61AFEF', '#C678DD', '#56B6C2', '#ABB2BF' ]
"Plug 'kyoz/purify', { 'rtp': 'vim' } " ['#FF6059', '#5FFF87','#5FAFFF', '#FFFF87', '#FF79C6', '#FF875F', '#AF87FF','#D19A66']
Plug 'nerdypepper/agila.vim' " #favorite
"Plug 'haishanh/night-owl.vim' " 24-bit 
"Plug 'cocopon/iceberg.vim' " templateable with cocopon/pgmnt.vim -- 256 color blue
"}}}

" : Syntax & Formatting{{{
Plug 'justinmk/vim-sneak'
Plug 'jparise/vim-graphql'
Plug 'scrooloose/nerdcommenter'
Plug 'w0rp/ale' " Asynchronous Lint Engine for NeoVim
Plug 'sheerun/vim-polyglot'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
"Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins'}
"  
" JS / JSX
"
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
"Plug 'epilande/vim-react-snippets' // Don't think I use this
"Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx' // DEPRICATED
"
" LEAN
"
"Plug 'leanprover/lean.vim'
"
" PHP 
"
"Plug 'StanAngeloff/php.vim'
"Plug '2072/PHP-Indenting-for-VIm'
"
"}}}

": Apperance{{{
"
": Airline{{{
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"}}}
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround' 
Plug 'junegunn/goyo.vim'
Plug 'kshenoy/vim-signature' " place, toggle and display marks 
 "}}}

": Utilities{{{

" // NERDTREE
Plug 'scrooloose/nerdtree'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
" // FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
" // OTHERS
Plug 'szw/vim-tags'
" }}}

": SIDE-EFFECTS {{{
Plug 'lambdalisue/vim-manpager'
Plug 'vimwiki/vimwiki'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
 "}}}

Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
Plug 'xolox/vim-misc'
"Plug 'xolox/vim-colorscheme-switcher'
call plug#end() 
"}}}

": Color Scheme {{{ 
filetype plugin on
syntax enable 
colorscheme agila
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

let g:UltiSnipsExpandTrigger="<M-q>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
let g:UltiSnipsEditSplit="vertical"
let g:suda#prefix = 'suda://' 
let g:suda_smart_edit = 1 
": Language Client Config (For Lean)
"let g:LanguageClient_autostart = 1
"let g:LanguageClient_serverCommands = {
    "\ 'lean': ['lean-language-server', '--stdio'], 
    "\ }

"nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
"nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>

": Vim-sneak Config
let g:sneak#label = 1

":  VimWiki Config{{{
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

"": Vim-Airline Config{{{
let g:airline_theme='bubblegum'
 " }}}

": NerdTree Config{{{
let NERDTreeMinimalUI = 1
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '.git$']
let NERDTreeShowHidden = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
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
let g:prettier#quickfix_enabled = 0
let g:prettier#quickfix_auto_focus = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" vim-tags
let g:vim_tags_auto_generate = 1

" FZF
nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

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
nnoremap <leader> K :call <SID>show_documentation()<CR>

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

 ": Set's{{{
set nocompatible
set nobackup
set nowritebackup
set noswapfile
set number relativenumber
set mouse=a
set shiftwidth=2
set expandtab
set tabstop=2
set softtabstop=2
set nowrap
set noshowmode
set smarttab
set smartindent
set autoindent
set termguicolors
set hidden
" }}}


if exists('s:loaded_vimafter')
  silent doautocmd VimAfter VimEnter *
else
  let s:loaded_vimafter = 1
  augroup VimAfter
    autocmd!
    autocmd VimEnter * source ~/.config/nvim/after/init.vim
  augroup END
endif
