" Line numbers
set nu

" Syntax highlight
syntax on

" Using pathogen for plugins
execute pathogen#infect()

" Start NERDTree automatically
autocmd VimEnter * NERDTree

" Move a cursor to main window instead of NERDTree
autocmd VimEnter * wincmd p

" Keybind to enable/disable NERDTree
map <C-n> :NERDTreeToggle<CR>

" Close vim if only NERDTree left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"let NERDTreeMinimalUI = 1
"let NERDTreeDirArrows = 1

" Folding all functions by default
set foldmethod=syntax
set foldmethod=indent
set foldlevel=1
"set foldclose=all

" Spacing configuration
set tabstop=4
"set expandtab
set softtabstop=4

" Highlight search
set hlsearch

" Show match as search proceeds
set incsearch
