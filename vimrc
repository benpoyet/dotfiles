inoremap <C-d> <Del>

set nocompatible              " be iMproved
filetype off                  " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" " required! 
Plugin 'VundleVim/Vundle.vim'

" Syntax
Plugin 'Valloric/YouCompleteMe'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'marijnh/tern_for_vim'
Plugin 'scrooloose/syntastic'

" General
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" syntastic
let g:syntastic_javascript_checkers=['jshint']



"delimitMate
let delimitMate_expand_cr = 10
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

"ctrlp
let g:ctrlp_working_path_mode = 0
set wildignore+=*/fixtures/*,*/tmp/*,*.swp,*/.git/* 


"Fugitive
nnoremap <Leader>gb :Gblame<cr>
nnoremap <Leader>gd :Gdiff<cr>
nnoremap <Leader>gs :Gstatus<cr>

