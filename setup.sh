#!/usr/bin/bash

# install vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# copy into correct location
cp ./.bash_aliases ~/
cp ./.bashrc ~/
cp ./.vimrc ~/
cp ./.tmux.conf ~/
cp -r .tmux ~/

vim -c "PlugInstall" ~/.vimrc
