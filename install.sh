#!/usr/bin/env bash

install_vim() {
    if [[ `whereis vim` ]]; then
        echo -e "\e[0;32m+---Backup your VIM Conf---+\e[0m\n"
        if [[ `ls ~/.vim 2> /dev/null` ]] || [[ `ls ~/.vimrc 2> /dev/null` ]]; then
            mv ~/.vim           ~/VIM.BAK
            mv ~/.vimrc         ~/VIMRC
        fi
        echo -e "\e[0;32m Copy the files for your HOME\e[0m"
        cp -r `pwd`/files/.vim       "$HOME"
        cp -r `pwd`/files/.vimrc     "$HOME"
        echo -e "\n\e[0;32m+--------Finished!---------+\e[0m"
    else
        echo -e "\e[0;32m+---Install VIM---+\e[0m\n"
        sudo pacman -S vim
        echo -e "\e[0;32m Copy the files for your HOME\e[0m"
        cp -r `pwd`/files/.vim      "$HOME"
        cp -r `pwd`/files/.vimrc    "$HOME"
        echo -e "\n\e[0;32m+----Finished!----+\e[0m"
    fi
}
install_vim
