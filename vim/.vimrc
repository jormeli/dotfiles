set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
" Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'rust-lang/rust.vim' 
Plugin 'altercation/vim-colors-solarized'
Plugin 'rhysd/vim-clang-format'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


set expandtab
set tabstop=4
set shiftwidth=8

set listchars=tab:>~,nbsp:_,trail:.
set list
set autoindent
set smartindent

set wrap

syntax on

let g:clang_format#code_style = "google"

"nnoremap <C-T> :NERDTree<CR>
nnoremap <C-T> :%!clang-format -style=google<CR>
