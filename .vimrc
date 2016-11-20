
" Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

set nocompatible

" syntax highlighting
syntax on
filetype plugin indent on

" plz gimme more colorz
set t_Co=256 

" Add some colors
color wnetoa 

" Line numeration
set number
set ruler

" UTF8 \o/
set encoding=utf-8

" Disable code folding
set nofoldenable

" Toggle Nerdtree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>
