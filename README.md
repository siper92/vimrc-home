vimrc-home
==========

### Commands to setup after git clone

git clone git@github.com:siper92/vimrc-home.git vim-home   
ABS_PATH=`cd "$1"; pwd`  
ln -s "$ABS_PATH/.vimrc" ~/.vimrc  

