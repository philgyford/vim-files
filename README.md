# Phil Gyford's vim set-up

phil@gyford.com  
http://github.com/philgyford/vim-files/

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


## Install a new plugin

Add a new line in `vimrc` like:

	Plugin 'tpope/vim-surround'

Reload it (`:source $MYVIMRC`) and run `:PluginInstall`.


## Update all configured plugins

`:PluginUpdate`


## Removing a plugin

Delete the line from `vimrc` and run `:PluginClean`.

