#!/bin/sh

cd `dirname $0`

mkdir -p $HOME/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim

for dotfile in .?*; do
    case $dotfile in 
        .. | .git | .gitignore | .gitmodules | .vim)
            continue;;
        *)
            ln -Fis "$PWD/$dotfile" $HOME;;
    esac
done

echo "done"
