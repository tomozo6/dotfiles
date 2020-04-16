#!/bin/bash
DOT_FILES=(.bashrc .bash_profile .vimrc .direnvrc)

for file in ${DOT_FILES[@]}
do
  ln -s ${HOME}/dotfiles/${file} ${HOME}/${file}
done


ln -s ${HOME}/dotfiles/.vim/rc ${HOME}/.vim/rc
