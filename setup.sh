ABS_PATH=`cd "$1"; pwd`
echo "Creating a semiling for $ABS_PATH to ~/"
ln -s "$ABS_PATH/.vimrc" ~/.vimrc
echo "Link created"
ln -s "$ABS_PATH/.vim" ~/.vim
echo "vim folder created"

mkdir -p "$ABS_PATH/.vim/bundle"
git clone git@github.com:scrooloose/nerdtree.git  "$ABS_PATH/.vim/bundle/nerdtree"
