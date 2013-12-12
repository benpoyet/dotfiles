inoremap <C-d> <Del>

set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" " required! 
Bundle 'gmarik/vundle'

" Syntax
Bundle 'Valloric/YouCompleteMe'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'
Bundle 'marijnh/tern_for_vim'
Bundle 'scrooloose/syntastic'

" General
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'Shougo/unite.vim'
Bundle 'bling/vim-airline'


" unite
nnoremap f :Unite -start-insert file

" syntastic
let g:syntastic_javascript_checkers=['jshint']



"delimitMate
let delimitMate_expand_cr = 1
imap <C-c> <CR><Esc>O



"YCM
let g:ycm_add_preview_to_completeopt=0
set completeopt-=preview



filetype plugin indent on     " required!

syntax on
set t_Co=256
"colorscheme solarized
set background=dark


set number
set mouse=a

set expandtab
set tabstop=2
set shiftwidth=2

set hlsearch
"hi Search ctermbg=6
set incsearch
set ignorecase
set smartcase

set laststatus=2
"inoremap {<CR>  {<CR>}<Esc>O

" Minimal number of screen lines to keep above and below the cursor
set scrolloff=4

set wildmenu "turn on wild menu

" Show incomplete commands
set showcmd

" Map leader and localleader key to comma
let mapleader = ","
let g:mapleader = ","
let maplocalleader = ","
let g:maplocalleader = ","



"NERDtree

" Shift-Tab: NERDTree
nnoremap <S-Tab> :NERDTreeToggle<CR>
"<Leader><Tab>: NERDTreeFind
nnoremap <silent> <Leader><Tab> :NERDTreeFind<cr>"
let NERDTreeShowHidden=1 



"Fugitive
nnoremap <Leader>gb :Gblame<cr>
nnoremap <Leader>gd :Gdiff<cr>
nnoremap <Leader>gs :Gstatus<cr>

