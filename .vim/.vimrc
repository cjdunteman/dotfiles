set shell=/bin/sh

" Plugins
packloadall

" General Settings
set noerrorbells
set autoindent
set expandtab
set smarttab 
set tabstop=4 
set smartindent
set shiftwidth=4 " make tab key 4 spaces
set encoding=utf-8
set linebreak
set scrolloff=1
syntax enable
set wrap
set textwidth=80
set number
set title 
set noswapfile
set nocompatible
set nomodeline

set colorcolumn=80

" Key Mappings
:inoremap jj <ESC>
map <C-n> :NERDTreeToggle<CR>

" Autoload plugins
let data_dir = has('nvim') ? stdpath('data') . '/site': '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-
    plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
 
 call plug#begin()
 Plug 'tpope/vim-fugitive'
 Plug 'vim-airline/vim-airline'
 Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
 
 Plug 'dracula/vim', { 'as': 'dracula' }
 call plug#end()
 
 colorscheme dracula