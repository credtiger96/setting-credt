#!/bin/bash 
# 16.10.02
# written by credtiger96 


echo  "welcome, this is credt's settting script"

echo "installing zsh..." 
apt-get install zsh 

echo "making zsh default shell...." 
chsh -s 'which zsh'

#setting up .bashrc file 
echo "setting .bashrc file ....." 
cp data/bash/.bashrc ~/.bashrc


#setup vimrc file
echo "setting .vimrc  ......."

cp data/vim/.vimrc ~/.vimrc
 

#setup vundle plugin management plugin 
echo "check Vundle plugin installed ... " 

VUNDLE_DIR="$HOME/.vim/bundle/vundle"

if [ -d "$VUNDLE_DIR" ]; then
	echo "vundle...... OK."
else 
	echo "vundle is not installed. Installing vundle ..... "
	git clone https://github.com/gmarik/Vundle.vim.git  "$VUNDLE_DIR"
fi

echo "setting up Vundle plugin Complete ...."

# setup Taglist Plugin 

	# find vim specific directory in /usr/share/vim 
VIM_DIR=$( ls /usr/share/vim/ | grep vim[0-9])

cp ./data/plugin/taglist_46/doc/taglist.txt "/usr/share/vim/$VIM_DIR/doc/"
cp ./data/plugin/taglist_46/plugin/taglist.vim  "/usr/share/vim/$VIM_DIR/plugin/"


#setup other vim plugins


echo "installing vim plugins ..... " 

vim +PluginInstall +qall 

echo "Complete. Enjoy!"

