# Phil Gyford's vim set-up

phil@gyford.com  
http://github.com/philgyford/vim-files/

Clone the files to somewhere, like:

	$ git clone https://github.com/philgyford/vim-files ~/Projects/personal/vim-files

You'll need to do this (using whatever your actual `path/to/vim-files` was above):

    $ cd ~
    $ ln -s path/to/vim-files .vim
	$ cd ~/.vim
	$ rake

This will install `~/.vimrc` and `~/.gvimrc` symlinks that point to files inside the `.vim` directory.

The Rakefile stuff via [mislav](https://github.com/mislav/vimfiles) and [tomtaylor](https://github.com/tomtaylor/).


I don't think this bit is needed now:

And then, from within `vim-files/`, this, to fetch the submodules (stored in `bundle/`):

	$ git submodule init
	$ git submodule update


## Adding new submodules

For future reference, to add further submodules, do something like this:

	$ cd path/to/vim-files
	$ git submodule add git@github.com:scrooloose/nerdtree.git bundle/nerdtree

And then commit `.gitmodules` and `bundle/nerdtree` (which will be a particular
commit of that repository, not the files themselves).


