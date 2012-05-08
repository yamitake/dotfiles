#!/bin/sh
case $1 in
remove)
    rm -f "~/.zshrc" "~/.vimrc" "~/.vim"
    exit;;
esac


for file in ".zshrc" ".vimrc" ".vim"
do
    src="$HOME/dotfiles/$file"
    dist="$HOME/$file"
    printf "ln -s $src $dist"
    if [ -e $src ] && [ ! -e $dist ]
    then
        ln -s $src $dist
        printf " create ..\n"
    else
        printf " skip ..\n"
    fi
done
