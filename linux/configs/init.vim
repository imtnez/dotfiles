set encoding=utf-8
filetype off

set rtp+=~/.local/.vim/bundle/Vundle.vim
set rtp+=~/.local/.fzf
call vundle#begin('~/.local/.vim/bundle')

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'                 " git
Plugin 'vim-airline/vim-airline'            " theme
Plugin 'vim-airline/vim-airline-themes'     " theme

Plugin 'fatih/vim-go'                       " Go support
Plugin 'scrooloose/nerdtree'                " file tree explorer
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'             " git diff before line numbers
"Plugin 'ervandew/supertab'
Plugin 'gcmt/taboo.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-repeat'
Plugin 'jlanzarotta/bufexplorer'

Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'junegunn/fzf.vim'

"Plugin 'kendling/taghighlight'
"Plugin 'abudden/EasyColour'

" Bundle 'gmarik/vundle'
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

let g:airline_theme='light'
let g:airline_powerline_fonts = 1
hi DiffAdd      ctermbg=150       ctermfg=0
hi DiffDelete   ctermbg=242       ctermfg=0
hi DiffChange   ctermbg=6         ctermfg=0
hi DiffText     ctermbg=224       ctermfg=0

hi Visual       ctermbg=254                         cterm=none
hi VertSplit    ctermbg=Black     ctermfg=White
hi CursorLine                                       cterm=none
hi LineNr       ctermbg=255       ctermfg=240

hi TabLineFill  ctermbg=DarkGreen ctermfg=LightCyan
hi TabLine      ctermbg=LightCyan ctermfg=DarkGrey  cterm=none
hi TabLineSel   ctermbg=LightBlue ctermfg=Black     cterm=none

set ignorecase
set noshowmode
set nocursorcolumn
set nocursorline
set norelativenumber
syntax sync minlines=256
set fillchars=vert:\│

syntax on
set number
set noerrorbells visualbell t_vb=

let mapleader = 'º'
set mouse=a
set nowrap

set expandtab
set tabstop=3
set shiftwidth=3

" directory for swapfiles
set directory=$HOME/.local/.vim/swapfiles

" directory for parsed tags
set tags+=~/.local/.vim/tags/cpp
set tags+=/sources/git/wlp-fo/.git/tags

map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

noremap <Leader>q :NERDTreeToggle<CR>

" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <Leader><F1> :BufExplorer<CR>
nnoremap <silent> <F2> :bn<CR>
nnoremap <silent> <F1> :bp<CR>

" //////////// Windows ////////////////

map tt :tabnew<CR>
map tc :tabclose<CR>
map tn :tabnext<CR>
map tp :tabprevious<CR>
map tf :tabfirst<CR>
map tl :tablast<CR>
map tm :tabmove
map ' `

set scrolloff=3

" //////////// Search //////////////////

" nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
set hlsearch

" path directory for goto file...
"set path+=**
set completeopt=longest,menuone

vmap <Tab> >gv
vmap <S-Tab> <gv
