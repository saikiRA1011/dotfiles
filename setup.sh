#!/bin/bash
DOT_FILES=(.bashrc .config .oh-my-posh .profile .vim .vimrc)
for file in ${DOT_FILES[@]}
do
	ln -s ~/dotfiles/$file ~/$file
done
