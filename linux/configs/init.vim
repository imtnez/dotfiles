filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'                 " git
Plugin 'vim-airline/vim-airline'            " theme
Plugin 'vim-airline/vim-airline-themes'     " theme
" Plugin 'Valloric/YouCompleteMe'             " autocomplete
Plugin 'scrooloose/nerdtree'                " file tree explorer

" Bundle 'gmarik/vundle'
" Plugin 'powerline/powerline'
" Bundle 'a.vim'
" Bundle 'wincent/Command-T'
" Bundle 'DoxygenToolkit.vim'
" Bundle 'godlygeek/tabular'
" Bundle 'tpope/vim-sensible'
" Bundle 'tpope/vim-unimpaired'
" Bundle 'tpope/vim-endwise'
" Bundle 'jeffkreeftmeijer/vim-numbertoggle'
" Bundle 'Lokaltog/vim-easymotion'
" Plugin 'morhetz/gruvbox'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'Mizuchi/STL-Syntax'
" Bundle 'tomtom/tcomment_vim'
" Bundle 'majutsushi/tagbar'
" Bundle 'julialang/julia-vim'
" Bundle 'SirVer/ultisnips'

call vundle#end()
filetype plugin indent on

" //////////////// Visual ////////////////

syntax on
hi LineNr ctermfg=240
let g:Powerline_symbols = 'fancy'
set number
set noerrorbells visualbell t_vb=

let mapleader = 'º'
set mouse=a
set nowrap
set expandtab

set tabstop=3
set shiftwidth=3

let g:ycm_confirm_extra_conf = 0

noremap <Leader>t :NERDTreeToggle<CR>

" //////////// Windows ////////////////

noremap tt :tab split<CR>

" //////////// Search //////////////////

" nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
set hlsearch
