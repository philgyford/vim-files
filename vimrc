" Some of this from http://stevelosh.com/blog/2010/09/coming-home-to-vim/

" Stop being vi compatible.
set nocompatible
filetype off

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" START Vundle config
" After adding a new line do `:source $MYVIMRC` and run `:PluginInstall`.
" After deleting something do `:PluginClean`.

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Solarized colour schemes:
Plugin 'altercation/vim-colors-solarized'

" Colorise CSS colors:
Plugin 'ap/vim-css-color'

" Stops pasting text into vim making a mess:
Plugin 'ConradIrwin/vim-bracketed-paste'

" Quick file browsing/matching:
Plugin 'ctrlpvim/ctrlp.vim'

" Expand html abbreviations:
Plugin 'mattn/emmet-vim'

" Markdown syntax highlighting etc:
Plugin 'plasticboy/vim-markdown'

" Auto closing of quotes, brackets, etc:
Plugin 'Raimondi/delimitMate'

" Make code commenting better:
Plugin 'scrooloose/nerdcommenter'

" Sidebar for file navigation:
Plugin 'scrooloose/nerdtree'

" Use ctrl-p to jump to function names:
Plugin 'tacahiroy/ctrlp-funky'

" Git wrapper:
Plugin 'tpope/vim-fugitive'

" Surround text with "(<>)" etc:
Plugin 'tpope/vim-surround'

" Better status/tabline:
Plugin 'vim-airline/vim-airline'

" Themes for vim-airline:
Plugin 'vim-airline/vim-airline-themes'

Plugin 'vim-syntastic/syntastic'

" Otherwise it'll delete itself if you do PluginClean:
Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on
" END Vundle config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Prevent some security exploits.
set modelines=0

" Default tab settings.
set tabstop=4
set shiftwidth=4
set softtabstop=4

" General sanity.
set encoding=utf-8
set fileencoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest,full
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
set textwidth=80
" Smaller textwidth only for git commit messages:
autocmd FileType gitcommit set textwidth=72
set colorcolumn=+1
" Extra column to use for git commit title lines:
autocmd FileType gitcommit set colorcolumn+=51
set formatoptions=qrn1
" Trying wordwrapping...
set linebreak
set nolist

" Show invisibles.
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,trail:·,eol:¬

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
"au FocusLost * :wa

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader commands:

" Fold HTML tag.
nnoremap <leader>ft Vatzf

" Select text that was just pasted.
nnoremap <leader>v V`]

" Split window vertically and switch to new side.
nnoremap <leader>w <C-w>v<C-w>l
" Split window horizontally and switch to new pane.
nnoremap <leader>W <C-w>s<C-w>j

" Map <C-[h/j/k/l]> to the commands to move around splits.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Map ,t to open ctrlp (so it's the same as when I used Command-t).
nnoremap <leader>t :CtrlP<CR>
" Cmd-Shift-P to clear the cache (refresh list of files).
nnoremap <silent> <D-P> :ClearCtrlPCache<CR>

" Add and set up ctrlp-funky extension.
let g:ctrlp_extensions = ['funky']
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor.
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
" Experimental syntax highlighting.
let g:ctrlp_funky_syntax_highlight = 1


" Change window size.
" First option is the same as initial size, set further down...
nmap <leader>1 :set lines=88 columns=85<CR>
" Wide enough for nerdtree:
nmap <leader>2 :set lines=88 columns=117<CR>
" Wide enough for nerdtree and two documents:
nmap <leader>3 :set lines=88 columns=203<CR>

" Set current vertical split to be our standard width:
nmap <leader>0 :vertical resize 85<CR>

" Split vertically, open nerdtree, make window big enough, resize left split:
nmap <leader>4 <leader>w<CR> <leader>d<CR> <leader>3<CR> <C-l> <leader>0


" Search all files in this and below directories.
" Display results in the little window.
nnoremap <leader>ff :noautocmd vimgrep //j ** \| cw<c-f>$BBBhhhi

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Using http://ethanschoonover.com/solarized/vim-colors-solarized
" Alternatively set background=dark.
set background=light
colorscheme solarized

map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
" Ignores for NERDTree.
let NERDTreeIgnore = ['__pycache__$', '\.pyc$', '\.git$']

" Ignores for ctrlp.
set wildignore+=*.git,*.pyc

" Change tabs/spaces as needed.

" Tabs, 2 spaces wide.
map \t <Esc>:set ts=2 sts=2 sw=2 noexpandtab<CR>
" Tabs, 4 spaces wide.
map \T <Esc>:set ts=4 sts=4 sw=4 noexpandtab<CR>
" Spaces instead of tabs, 2 spaces.
map \s <Esc>:set ts=2 sts=2 sw=2 expandtab<CR>
" Spaces instead of tabs, 4 spaces.
map \S <Esc>:set ts=4 sts=4 sw=4 expandtab<CR>

" Show trailing whitespace.
nnoremap <leader>L :/\s\+$<CR>

" keep blocks selected when indenting
vnoremap < <gv
vnoremap > >gv

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Tabs/spaces for different file types.
autocmd Filetype python setlocal ts=4 sts=4 sw=4 expandtab

autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype json setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2 expandtab

autocmd Filetype html setlocal ts=4 sts=4 sw=4 noexpandtab

let g:vim_markdown_folding_disabled=1

let python_highlight_all = 1



" Type ,hlt to get a trace from the HiLinkTrace plugin that describes why
" syntax highlighting is making the text under the cursor the current color.

" Hide MacVim toolbar
:set go-=T

" Stop Finder labels disappearing when saving a file.
set backupcopy=yes

" Set default window size.
" If you change this, set the size for <leader>1, above.
set lines=88 columns=85

" Put all swap files in one place.
set directory=~/.vim/swap/

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

"let g:syntastic_error_symbol = '❌'
"let g:syntastic_style_error_symbol = '⁉️'
"let g:syntastic_warning_symbol = '❗️'
"let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

"let g:syntastic_javascript_checkers = ['xo']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline

" Enable airline syntastic integration:
let g:airline#extensions#syntastic#enabled = 1

" Disable wordcount:
let g:airline#extensions#wordcount#enabled = 0:

" Make the syntastic error in airline readable (but ugly):
call airline#parts#define_accent('syntastic', 'yellow')

