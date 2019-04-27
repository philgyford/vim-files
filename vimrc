
" General {{{
set nocompatible						" Stop being vi compatible.
filetype off
set backspace=indent,eol,start
set encoding=utf-8
set fileencoding=utf-8
set scrolloff=3
set showmode
set hidden
set visualbell
set ttyfast
set ruler
set laststatus=2
set relativenumber
set undofile
set autoread							" Reload file if changed (only in gvim)
set history=1000
set directory=~/.vim/swap/				" Put all swap files in one place
set backupcopy=yes						" Stop Finder labels disappearing when saving a file
set go-=T								" Hide MacVim toolbar
set wrap								" Wrap long lines visually (not actually)
set linebreak							" Wrap at break characters
set nolist								" Something to do with lists, wrapping and end of line characters?
set textwidth=79						" Default line width for wrapping
set colorcolumn=+1
" Disable help key.
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
" }}}

" Vundle {{{
" After adding a new line do `:source $MYVIMRC` and run `:PluginInstall`.
" After deleting something do `:PluginClean`.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Solarized colour schemes:
Plugin 'altercation/vim-colors-solarized'

" Python formatting:
Plugin 'ambv/black'

" Colorise CSS colors:
Plugin 'ap/vim-css-color'

" Stops pasting text into vim making a mess:
Plugin 'ConradIrwin/vim-bracketed-paste'

" Quick file browsing/matching:
Plugin 'ctrlpvim/ctrlp.vim'

" Make NERDTree be independent from tabs:
Plugin 'jistr/vim-nerdtree-tabs'

" Expand html abbreviations:
Plugin 'mattn/emmet-vim'

" For working with Mustache and Handlebars templates:
Plugin 'mustache/vim-mustache-handlebars'

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
" }}}

" Colours {{{
syntax enable

" Using http://ethanschoonover.com/solarized/vim-colors-solarized
" Alternatively set background=dark.
set background=light
colorscheme solarized
" }}}

" Spaces & Tabs {{{
set autoindent
set tabstop=4										" Number of visual spaces per tab
set shiftwidth=4									" Number of spaces for each step of (auto)indent and >> <<
set softtabstop=4									" Number of spaces in tab when editing
set modelines=1										" Enables the folding thing at the end of this file
set listchars=tab:▸\ ,trail:·,eol:¬					" Show invisibles.
filetype indent on									" Load filetype-specific indent files
filetype plugin on
" Keep blocks selected when outdenting
vnoremap < <gv
" Keep blocks selected when indenting
vnoremap > >gv
" Change tabs/spaces as needed:
" Tabs, 2 spaces wide.
map \t <Esc>:set ts=2 sts=2 sw=2 noexpandtab<CR>
" Tabs, 4 spaces wide.
map \T <Esc>:set ts=4 sts=4 sw=4 noexpandtab<CR>
" Spaces instead of tabs, 2 spaces.
map \s <Esc>:set ts=2 sts=2 sw=2 expandtab<CR>
" Spaces instead of tabs, 4 spaces.
map \S <Esc>:set ts=4 sts=4 sw=4 expandtab<CR>
" }}}

" UI Layout {{{
set showcmd				" Show command in bottom bar
set cursorline			" Highlight current line
set wildmenu			" Visual autocomplete for command menu
set wildmode=longest:list,full
set lazyredraw			" Redraw only when we need to
set showmatch			" Highlight matching parenthesis

" }}}

" Searching {{{
set ignorecase			" Ignore case when searching, but...
set smartcase			" ...if pattern contains an uppercase char, it is case sensitive
set incsearch			" Search as characters are entered
set hlsearch			" Highlight all matches
nnoremap / /\v
vnoremap / /\v
" }}}

" Moving {{{
" Force hjkl movement keys.
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" If a long line wraps, we can move up/down its wrapped lines:
nnoremap k gk
nnoremap j gj
" }}}

" Leader Shortcuts {{{
nnoremap ; :
let mapleader = ","
" Make ,<space> clear search:
nnoremap <leader><space> :noh<cr>
" Fold HTML tag:
nnoremap <leader>ft Vatzf
" Select text that was just pasted:
nnoremap <leader>v V`]
" Show invisibles:
nnoremap <leader>l :set list!<CR>
" Show trailing whitespace:
nnoremap <leader>L :/\s\+$<CR>
" Edit .vimrc:
nnoremap <leader>ev :vsp $MYVIMRC<CR>
" Edit .zshrc:
"nnoremap <leader>ez :vsp ~/.zshrc<CR>
" Source .vimrc:
nnoremap <leader>sv :source $MYVIMRC<CR>
" }}}

" Window & Splits {{{
" Split window vertically, switch to new side:
nnoremap <leader>w <C-w>v<C-w>l
" Split window horizontally, switch to new pane:
nnoremap <leader>W <C-w>s<C-w>j

" Map <C-[h/j/k/l]> to the commands to move around splits:
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Change window size.
set lines=96 columns=117						" Default window size
" Single document, no nerdtree:
nmap <leader>1 :set lines=96 columns=85<CR>
" Wide enough for nerdtree:
nmap <leader>2 :set lines=96 columns=118<CR>
" Wide enough for nerdtree and two documents:
nmap <leader>3 :set lines=96 columns=205<CR>
" Set current vertical split to be our standard width:
nmap <leader>0 :vertical resize 85<CR>

" Split vertically, open NERDTreeTabs, make window big enough, resize left split:
nmap <leader>4 <leader>w<CR> :execute 'NERDTreeTabsOpen'<CR> <leader>3<CR> <C-l> <leader>0
" }}}

" Autogroups {{{
augroup configgroup
	autocmd!
	autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
	            \:call <SID>StripTrailingWhitespaces()

	autocmd FileType gitcommit setlocal textwidth=72
	autocmd FileType gitcommit setlocal colorcolumn+=51		" Extra column for titles:

	autocmd FileType html setlocal expandtab
	autocmd FileType html setlocal shiftwidth=2
	autocmd FileType html setlocal softtabstop=2
	autocmd FileType html setlocal tabstop=2

	autocmd FileType javascript setlocal expandtab
	autocmd FileType javascript setlocal shiftwidth=2
	autocmd FileType javascript setlocal softtabstop=2
	autocmd FileType javascript setlocal tabstop=2

	autocmd FileType json setlocal expandtab
	autocmd FileType json setlocal shiftwidth=2
	autocmd FileType json setlocal softtabstop=2
	autocmd FileType json setlocal tabstop=2

	autocmd FileType python setlocal textwidth=72
	autocmd FileType python setlocal colorcolumn+=72		" Extra column for comments
	autocmd FileType python setlocal expandtab
	autocmd FileType python setlocal shiftwidth=4
	autocmd FileType python setlocal softtabstop=4
	autocmd FileType python setlocal tabstop=4
" Formatting with Black plugin:
	autocmd FileType python nnoremap <buffer> <leader>fo :Black<CR>

	autocmd FileType ruby setlocal expandtab
	autocmd FileType ruby setlocal shiftwidth=2
	autocmd FileType ruby setlocal softtabstop=2
	autocmd FileType ruby setlocal tabstop=2

	autocmd FileType yaml setlocal expandtab
	autocmd FileType yaml setlocal shiftwidth=2
	autocmd FileType yaml setlocal softtabstop=2
	autocmd FileType yaml setlocal tabstop=2
augroup END
" }}}

" CtrlP {{{
" Map ,t to open ctrlp:
nnoremap <leader>t :CtrlP<CR>
" Cmd-Shift-P to clear the cache (refresh list of files):
nnoremap <silent> <D-P> :ClearCtrlPCache<CR>
let g:ctrlp_extensions = ['funky']				" Add ctrlp-funky extension
" Set up ctrlp-funky extension:
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow list down with a word under cursor:
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1			" Experimental syntax highlighting.
set wildignore+=*.git,*.pyc						" Ignores for ctrlp.
" }}}

" Airline {{{
let g:airline#extensions#syntastic#enabled = 1	" Enable airline syntastic integration:
let g:airline#extensions#wordcount#enabled = 0	" Disable wordcount:
call airline#parts#define_accent('syntastic', 'yellow')	" Make syntastic error in airline readable:
" }}}

" NERDTree {{{
" For vanilla NERDTree:
"map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
" For NerdTreeTabs
map <leader>d :execute 'NERDTreeTabsToggle'<CR>
let NERDTreeIgnore = ['__pycache__$', '\.pyc$', '\.git$']	" Ignores for NERDTree.
" }}}

" Syntastsic {{{
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

" Disable HTML syntax checking for Handlebars templates as it's buggered.
" https://github.com/mustache/vim-mustache-handlebars/issues/6
let g:syntastic_filetype_map = { 'html.handlebars': 'handlebars' }
" }}}

" Custom Functions {{{
" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
	" save last search & cursor position
	let _s=@/
	let l = line(".")
	let c = col(".")
	%s/\s\+$//e
	let @/=_s
	call cursor(l, c)
endfunc
" }}}


" Make ,CR clear search. Maybe? Not sure.
nnoremap <tab> %
vnoremap <tab> %

set formatoptions=qrn1

" Search all files in this and below directories.
" Display results in the little window.
nnoremap <leader>ff :noautocmd vimgrep //j ** \| cw<c-f>$BBBhhhi

let g:vim_markdown_folding_disabled=1

let python_highlight_all = 1


" Over the years, inspired by:
" Some of this from http://stevelosh.com/blog/2010/09/coming-home-to-vim/
" And https://dougblack.io/words/a-good-vimrc.html


" Set this to fold using markers, instead of indentation,
" close every fold by default (i.e. when the file is opened).
" Assumes we have 'set modelines=1' elsewhere.
" vim:foldmethod=marker:foldlevel=0
