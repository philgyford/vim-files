# Phil Gyford's vim set-up

phil@gyford.com  
http://github.com/philgyford/vim-files/

## Setup

Clone the files to somewhere, like:

	$ git clone https://github.com/philgyford/vim-files ~/Projects/personal/vim-files

You'll need to do this:

    $ cd ~
    $ ln -s ~/Projects/personal/vim-files .vim
    $ ln -s ~/Projects/personal/vim-files/vimrc .vimrc
    $ ln -s ~/Projects/personal/vim-files/gvimrc .gvimrc
	$ cd .vim

Then install [Vundle](https://github.com/VundleVim/Vundle.vim):

	$ git clone https://github.com/VundleVim/Vundle.vim.git bundle/Vundle.vim

Which will make the `~/Projects/personal/vim-files/bundle` directory where all
the bundles will be stored.

Open MacVim and run `:PluginInstall`.

### Extras

#### fzf

For fuzzy-file searching using `,t`:

	$ brew install fzf
	$ (brew --prefix)/opt/fzf/install

(Not sure if that second line, installing key bindings and fuzzy completion, is necessary.)

	$ brew install ripgrep


#### Font

We use a variant of [Fira Code](https://github.com/tonsky/FiraCode) that
includes icons which are used by `vim-devicons`. Install it with:

	$ cd ~/Library/Fonts && curl -fLo "Fura Code Retina Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Retina/complete/Fura%20Code%20Retina%20Nerd%20Font%20Complete.otf

(Previously we used the plain Fira Code, installed with Homebrew:
install with [Homebrew](http://brew.sh/): 

	$ brew tap caskroom/fonts
	$ brew cask install font-fira-code
)

#### Linting and formatting

* Install Black for python formatting: `pip install black`

* Install flake8 for python linting with ALE: `pip install flake8`


#### Local project files

With [Localvimrc](https://github.com/embear/vim-localvimrc) installed we can
add `.lvimrc` files in project directories and commands in them will be used.
(You'll probably have to confirm once or twice, for security reasons.)

You can't/shouldn't use `autcmd` in these files but, if you need to set things
based on filetype you can put something like this in there:

    if &filetype == "text"
      setlocal textwidth=30 colorcolumn=30
    endif


## Using Vundle

### Install a new plugin

Add a new line in `vimrc` like:

	Plugin 'tpope/vim-surround'

Reload it (`:source $MYVIMRC`) and run `:PluginInstall`.

### Update all configured plugins

`:PluginUpdate`


## Removing a plugin

Delete the line from `vimrc` and run `:PluginClean`.


## More help

`:h vundle`

