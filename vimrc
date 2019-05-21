" Line numbers
set nu

" Syntax highlight
syntax on

" Using pathogen for plugins
execute pathogen#infect()

" Start NERDTree automatically
" autocmd VimEnter * NERDTree

" Move a cursor to main window instead of NERDTree
autocmd VimEnter * wincmd p

" Keybind to enable/disable NERDTree
map <C-n> :NERDTreeToggle<CR>

" Close vim if only NERDTree left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"let NERDTreeMinimalUI = 1
"let NERDTreeDirArrows = 1

" Folding all functions by default
"set foldmethod=syntax
"set foldmethod=indent
"set foldlevel=1
"set foldclose=all

" Spacing configuration
set tabstop=4
"set expandtab
set softtabstop=4

" Highlight search
set hlsearch

" Show match as search proceeds
set incsearch

" Colorscheme
"colorscheme d8g_03
colorscheme 3dglasses

" get file settings
set modeline

" set tw for git commits
au FileType gitcommit set tw=72

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" align new line
set autoindent
