" From http://stevelosh.com/blog/2010/09/coming-home-to-vim/

filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

" Stop being vi compatible.
set nocompatible

" Prevent some security exploits.
set modelines=0

" Tab settings.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" General sanity.
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

let mapleader = ","

" Searching/moving settings.
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
" Highlight search results.
set incsearch
set showmatch
set hlsearch
" Make ,CR clear search.
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Handle long lines nicely.
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Invisibles.
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

" Force hjkl movement keys.
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Disable help key.
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Use ; instead of :.
nnoremap ; :

" Save file on losing focus.
au FocusLost * :wa

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader commands:

" Fold HTML tag.
nnoremap <leader>ft Vatzf

" Select text that was just pasted.
nnoremap <leader>v V`]

" Split window vertically and switch to new side.
nnoremap <leader>w <C-w>v<C-w>l

" Map <C-[h/j/k/l]> to the commands to move around splits.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"colorscheme molokai

map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
" Ignores for NERDTree.
set wildignore+=*.git

