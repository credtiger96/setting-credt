#!/bin/bash 

echo  "welcome, this is credt's vim settting script"

echo "setting .vimrc  ......."

cp data/vim/.vimrc ~/.vimrc

echo "setting up Vundle plugin ...." 

rm -rf  ~/.vim/bundle/vundle
git clone https://github.com/gmarik/Vundle.vim.git  ~/.vim/bundle/vundle

echo "installing vim plugins ..... " 

vim +PluginInstall +qall 

echo "Complete. Enjoy! " 

