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


## Updating submodules

To update one:

	$ cd bundle/submodulename
	$ git checkout master
	$ git pull
	$ git commit -am "Updated submodulename"

To update all:

	$ git submodule foreach git pull origin master
	$ git commit -am "Updated all submodules"


## Removing a submodule

1. Delete the relevant section from the `.gitmodules` file.
2. Stage the `.gitmodules` changes `git add .gitmodules`
3. Delete the relevant section from `.git/config`
4. Run `git rm --cached path_to_submodule` (no trailing slash).
5. Run `rm -rf .git/modules/path_to_submodule`
6. Commit `git commit -m "Removed submodule <name>"`
7. Delete the now untracked submodule files
   `rm -rf path_to_submodule`

From http://stackoverflow.com/a/1260982/250962

