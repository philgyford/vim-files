" General {{{
set nocompatible                    " Stop being vi compatible.
filetype off
set backspace=indent,eol,start      " Allow backspace beyond insertion point
set encoding=utf-8
set fileencoding=utf-8
set fileformats=unix,dos,mac        " Prefer unix
set scrolloff=3                     " Keep cursor away from this many chars top/bot

" See https://vimhelp.org/change.txt.html#fo-table
" Default is tcq
" c - Auto-wrap comments using textwidth, inserting comment leader.
" l - Long lines are not broken in insert mode.
" n - recognize numbered lists.
" q - Allow formatting of comments with '<leader>gq'
" r - Automatically insert the current comment leader after hitting <Enter>.
" 1 - Don't break a line after a one-letter word, but before it (if possible).
set formatoptions=clnqr1

set showmode
set hidden
set visualbell
set ttyfast
set ruler                           " Show row/col and percentage
set laststatus=2                    " Always show the status bar
set relativenumber
set undofile
set autoread                        " Reload file if changed (only in gvim)
set shortmess+=A                    " Don't bother me when a swapfile exists
set suffixes+=.pyc                  " Ignore these files when tab-completing
set history=1000
set directory=~/.vim/swap/          " Put all swap files in one place
set backupcopy=yes                  " Stop Finder labels disappearing when saving a file
set go-=T                           " Hide MacVim toolbar
set wrap                            " Wrap long lines visually (not actually)
set linebreak                       " Wrap at break characters
set nolist                          " Something to do with lists, wrapping and end of line characters?
set textwidth=79                    " Default line width for wrapping
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

" ALE, Asynchronous Lint Engine
Plugin 'w0rp/ale'

" Python formatting:
Plugin 'ambv/black'

" Auto closing of quotes, brackets, etc:
Plugin 'Raimondi/delimitMate'

" Expand html abbreviations:
Plugin 'mattn/emmet-vim'

" Fuzzy file finder, like Ctrlp:
set rtp+=/usr/local/opt/fzf            " Installed via homebrew
Plugin 'junegunn/fzf.vim'

" Status bar:
Plugin 'itchyny/lightline.vim'

" Make code commenting better:
Plugin 'scrooloose/nerdcommenter'

" Sidebar for file navigation:
Plugin 'scrooloose/nerdtree'

" Show git status flags in NERDTree:
"Plugin 'Xuyuanp/nerdtree-git-plugin'

" NOTE: This causes the vim-devicons in NERDTree to get cut in half:
"   https://github.com/ryanoasis/vim-devicons/issues/133
" Extra syntax and highlight for nerdtree files
"Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

" Stops pasting text into vim making a mess:
Plugin 'ConradIrwin/vim-bracketed-paste'

" Solarized colour schemes:
Plugin 'altercation/vim-colors-solarized'

" Colorise CSS colors:
Plugin 'ap/vim-css-color'

" Add file type icons to NERDTree, lightline, etc:
"Plugin 'ryanoasis/vim-devicons'

" Shows git diff in the 'gutter':
Plugin 'airblade/vim-gitgutter'

" Display indent levels visually:
Plugin 'nathanaelkane/vim-indent-guides'

" Use local `vimrc` files:
Plugin 'embear/vim-localvimrc'

" Markdown syntax highlighting etc:
Plugin 'plasticboy/vim-markdown'

" For working with Mustache and Handlebars templates:
Plugin 'mustache/vim-mustache-handlebars'

" Surround text with "(<>)" etc:
Plugin 'tpope/vim-surround'

" Otherwise it'll delete itself if you do PluginClean:
Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on
" }}}

" Colors {{{
syntax enable
colorscheme solarized

" Using http://ethanschoonover.com/solarized/vim-colors-solarized
if has('gui_running')
    set background=light
else
    set background=dark
endif
 
" Make trailing spaces very visible
highlight ExtraWhiteSpace ctermbg=Black guibg=#cb4b16
match ExtraWhitespace /\s\+$/
" }}}

" Spaces & Tabs {{{
set autoindent
set tabstop=4                           " Number of visual spaces per tab
set shiftwidth=4                        " Number of spaces for each step of (auto)indent and >> <<
set softtabstop=4                       " Number of spaces in tab when editing
set modelines=1                         " Enables the folding thing at the end of this file
set listchars=tab:▸\ ,trail:·,eol:¬     " Show invisibles.
filetype indent on                      " Load filetype-specific indent files
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
set showcmd                                 " Show command in bottom bar
set cursorline                              " Highlight current line
set wildmenu                                " Visual autocomplete for command menu
set wildmode=longest:list,full
set wildignore=~,.git,node_modules,*.pyc    " Ignores for tab completion
set lazyredraw                              " Redraw only when we need to
set showmatch                               " Highlight matching parenthesis
" }}}

" Searching {{{
set ignorecase                              " Ignore case when searching, but...
set smartcase                               " ...if pattern contains an uppercase char, it is case sensitive
set incsearch                               " Search as characters are entered
set hlsearch                                " Highlight all matches
nnoremap / /\v
vnoremap / /\v
" }}}

" Folding {{{
set foldmethod=indent       " fold based on indent level
set foldnestmax=10          " max 10 depth
set nofoldenable            " don't fold files by default on open
" Fold/unfold using space:
nnoremap <space> za
set foldlevelstart=10       " start with fold level of 1
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

" Default window size (same as an option in 'change window size', below):
if has('gui_running')
    set lines=96 columns=118
endif

" Change window size:
" (one of these should be the same as in 'default window size', above)

" Wide enough for nerdtree and 1 document::
nmap <leader>1 :set lines=96 columns=118<CR>
" Wide enough for nerdtree and 2 documents:
nmap <leader>2 :set lines=96 columns=205<CR>
" Wide enough for nerdtree and 3 documents:
nmap <leader>3 :set lines=96 columns=292<CR>

" Single document, no nerdtree:
nmap <leader>9 :set lines=96 columns=86<CR>
" Set current vertical split to be our standard width:
nmap <leader>0 :vertical resize 86<CR>

" Split vertically, open NERDTree, make window big enough, resize left split:
"nmap <leader>4 <leader>w<CR> :execute 'NERDTreeOpen'<CR> <leader>3<CR> <C-l> <leader>0
" }}}

" Autogroups {{{
augroup configgroup
    autocmd!
    "autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
                "\:call <SID>StripTrailingWhitespaces()

    " cc  - colorcolumn (comma-separated list of cols in which to display line)
    " et  - expandtab (or noet for opposite)
    " sw  - shiftwidth
    " sts - softtabstop
    " ts  - tabstop
    " tw  - textwidth (wrapping)

    autocmd FileType css        setlocal sw=2 sts=2 ts=2 et
    autocmd FileType html       setlocal sw=2 sts=2 ts=2 et
    autocmd FileType htmldjango setlocal sw=2 sts=2 ts=2 et
    autocmd FileType javascript setlocal sw=2 sts=2 ts=2 et
    autocmd FileType json       setlocal sw=2 sts=2 ts=2 et
    autocmd FileType ruby       setlocal sw=2 sts=2 ts=2 et
    autocmd FileType scss       setlocal sw=2 sts=2 ts=2 et
    autocmd FileType yaml       setlocal sw=2 sts=2 ts=2 et

    autocmd FileType gitcommit  setlocal tw=72 cc+=51

    autocmd FileType markdown   setlocal sw=4 sts=4 ts=4 et

    autocmd FileType php        setlocal sw=4 ts=4 noet

    autocmd FileType python     setlocal sw=4 sts=4 ts=4 et tw=79 cc+=72
    " Formatting with Black plugin:
    autocmd FileType python     nnoremap <buffer> <leader>fo :Black<CR>

augroup END
" }}}

" ALE {{{
let g:ale_open_list = 1

" Milliseconds delay before linting happens (default: 200):
let g:ale_lint_delay = 2000

" Always display the gutter column:
let g:ale_sign_column_always = 1

" Set gutter icon colors:
highlight link ALEWarningSign String
highlight link ALEErrorSign Title

" Set gutter icons:
let g:ale_sign_warning = ''
let g:ale_sign_error = ''

nmap <leader>f <Plug>(ale_fix)
"" Jump to next/previous error:
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>

" Run ALL linters unless specified here:
let g:ale_linters = {
\   'python': ['flake8'] ,
\ }

augroup VimDiff
  autocmd!
  autocmd VimEnter,FilterWritePre * if &diff | ALEDisable | endif
augroup END

" Close the loclist window automatically when the buffer is closed:
augroup CloseLoclistWindowGroup
  autocmd!
  autocmd QuitPre * if empty(&buftype) | lclose | endif
augroup END

" }}}

" FZF {{{
nnoremap <leader>t :Files<CR>
nnoremap <leader>b :Buffers<CR>
"nnoremap <leader>r :Tags<CR>
nnoremap <leader>ff :Find<CR>
nnoremap <leader>ff! :Find!<CR>

" Make fzf use ripgrep search by default:
" --files: List files that would be searched but do not search
" --follow: Follow symlinks
" --glob: Additional conditions for search (ignore .git/ folders etc.)
let $FZF_DEFAULT_COMMAND = 'rg --files --follow --glob "!{.git,node_modules}/*" 2>/dev/null'

" Add :Find command to search in files with fzf.
" Do ":Find term" to find term. Up/down to navigate. ? for preview.
" OR ":Find! term" to find term with preview shown above automatically.
" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --color: Search color options
" --follow: Follow symlinks
" --smart-case: Case insensitive if all lowercase, or case-sensitive otherwise
" --glob: Additional conditions for search
command! -bang -nargs=* Find
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --follow --smart-case --glob "!{.git/*,node_modules/*}" '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:40%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)
"}}}

" GitGutter {{{
nmap ]g :GitGutterNextHunk<CR>
nmap [g :GitGutterPrevHunk<CR>
augroup VimDiff
  autocmd!
  autocmd VimEnter,FilterWritePre * if &diff | GitGutterDisable | endif
augroup END
" }}}

" Indent Guides {{{
" Use <leader>ig to toggle indent guides

" Use it in startup:
let g:indent_guides_enable_on_vim_startup = 1
" Don't show the first one:
let g:indent_guides_start_level = 2
" Show vertical lines, instead of coloring the full width of each indent:
let g:indent_guides_guide_size = 1
" Use custom colors:
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#eee8d5 ctermbg=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#eee8d5 ctermbg=0
" }}}

" Lightline {{{
let g:lightline = {}

let g:lightline.colorscheme = 'solarized'

" Register components:
let g:lightline.component_expand = {
\   'linter_warnings': 'LightlineLinterWarnings',
\   'linter_errors': 'LightlineLinterErrors',
\   'linter_ok': 'LightlineLinterOK',
\ }

" Set component colors:
let g:lightline.component_type = {
\   'readonly': 'error',
\   'linter_warnings': 'warning',
\   'linter_errors': 'error',
\ }

let g:lightline.active = {
\   'left':  [
\               ['mode', 'paste'],
\               ['filename', 'readonly', 'modified']
\            ],
\   'right': [
\               ['percent', 'lineinfo'],
\               ['fileencoding', 'filetype'],
\               ['linter_warnings', 'linter_errors', 'linter_ok']
\            ]
\ }

"" From https://github.com/statico/dotfiles/blob/master/.vim/vimrc

function! LightlineLinterWarnings() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ', all_non_errors)
endfunction

function! LightlineLinterErrors() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ', all_errors)
endfunction

function! LightlineLinterOK() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? ' ' : ''
endfunction

" Update and show lightline but only if it's visible (e.g., not in Goyo)
function! s:MaybeUpdateLightline()
  if exists('#lightline')
    call lightline#update()
  end
endfunction

" Update the lightline scheme from the colorscheme. Hopefully.
function! s:UpdateLightlineColorScheme()
  let g:lightline.colorscheme = g:colors_name
  call lightline#init()
endfunction

augroup _lightline
  autocmd!
  autocmd User ALELint call s:MaybeUpdateLightline()
  autocmd ColorScheme * call s:UpdateLightlineColorScheme()
augroup END

" }}}

" NERDTree {{{
let g:NERDTreeMinimalUI = 1             " Disables the Bookmarks label
let g:NERDTreeMarkBookmarks = 0         " Don't mark Bookmarks
let g:NERDTreeAutoDeleteBuffer = 1      " Delete buffer when deleting/renaming a file in a context menu
let g:NERDTreeStatusLine = -1           " Use default statusline setting

" Open/close NERDTree:
map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>

" Ignores for NERDTree.
let NERDTreeIgnore = ['__pycache__$', '\.pyc$', '\.git$']

" Open NERDtree automatically, only when opening a directory:
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" }}}

" NERDTree Git {{{
" Show ignored status (might be slow):
let g:NERDTreeShowIgnoredStatus = 1
" Set symbols for statuses:
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "M",
    \ "Staged"    : "S",
    \ "Untracked" : "U",
    \ "Renamed"   : "R",
    \ "Unmerged"  : "u",
    \ "Deleted"   : "D",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '-',
    \ "Unknown"   : "?"
    \ }
" }}}

" Vim Devicons {{{
" The amount of space to use after the glyph character (default ' ')
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
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


" Miscellaneous stuff...

" Make ,CR clear search. Maybe? Not sure.
nnoremap <tab> %
vnoremap <tab> %


let g:vim_markdown_folding_disabled=1

let python_highlight_all = 1


" Some of this inspired by:
"    http://stevelosh.com/blog/2010/09/coming-home-to-vim/
"    https://dougblack.io/words/a-good-vimrc.html
"    https://statico.github.io/vim3.html


" Set this to fold using markers, instead of indentation,
" close every fold by default (i.e. when the file is opened).
" Assumes we have 'set modelines=1' elsewhere.
" vim:foldmethod=marker:foldenable:foldlevel=0:ts=4:sts=4:sw=4:expandtab
