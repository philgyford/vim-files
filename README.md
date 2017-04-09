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

### [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

This requires extra steps (the below what I did for Mac OS X):

1. Install CMake with [Homebrew](http://brew.sh/):

		$ brew update
		$ brew install cmake

2. Compile YouCompleteMe:

		$ cd ~/.vim/bundle/YouCompleteMe
		$ ./install.py

	**BUT** because I use pyenv to manage my python versions I first had to install
	a python version that YouCompleteMe was happy with (see the YCM FAQ):

		$ PYTHON_CONFIGURE_OPTS="--enable-framework" pyenv install 3.6.0

	**BUT** that screwed up things in other projects like tox creating virtual
	envs so I had to re-run `python install 3.6.0` to install a standard
	version.


## Install a new plugin

Add a new line in `vimrc` like:

	Plugin 'tpope/vim-surround'

Reload it (`:source $MYVIMRC`) and run `:PluginInstall`.


## Update all configured plugins

`:PluginUpdate`


## Removing a plugin

Delete the line from `vimrc` and run `:PluginClean`.


## More help

`:h vundle`

