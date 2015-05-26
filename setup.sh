ABS_PATH=`cd "$1"; pwd`
echo "Creating a semilings for $ABS_PATH to ~/"
if [ ! -e "$ABS_PATH/.vimrc" ]; then
	ln -s "$ABS_PATH/.vimrc" ~/.vimrc
	echo "Link created"
fi

if [ ! -d "$ABS_PATH/.vim" ]; then
	ln -s "$ABS_PATH/.vim" ~/.vim
	echo "vim folder created"
fi

if [ ! -d "$ABS_PATH/.vim/bundle" ]; then
	mkdir -p "$ABS_PATH/.vim/bundle"
fi

if [ ! -d "$ABS_PATH/.vim/bundle/nerdtree" ]; then
	echo "Cloning the nerdTree plugin"
	git clone git@github.com:scrooloose/nerdtree.git  "$ABS_PATH/.vim/bundle/nerdtree"
fi

if [ ! -d  "$ABS_PATH/.vim/bundle/jedi-vim" ]; then
	echo "Cloning the jedi-vim plugin"
	git clone git@github.com:siper92/jedi-vim.git "$ABS_PATH/.vim/bundle/jedi-vim" 
fi
