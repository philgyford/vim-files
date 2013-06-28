# Phil Gyford's vim set-up

phil@gyford.com  
http://github.com/philgyford/vim-files/

You'll need to do:

    $ cd ~
    $ ln -s path/to/vim-files .vim
    $ ln -s path/to/vim-files/vimrc .vimrc

And then, from within `vim-files/`, this, to fetch the submodules (stored in `bundle/`):

	$ git submodule init
	$ git submodule update

For future reference, to add further submodules, do something like this:

	$ cd path/to/vim-files
	$ git submodule add git@github.com:scrooloose/nerdtree.git bundle/nerdtree

And then commit `.gitmodules` and `bundle/nerdtree` (which will be a particular
commit of that repository, not the files themselves).


