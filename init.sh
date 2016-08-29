#!/bin/sh

cd `dirname $0`

for dotfile in .?*; do
    case $dotfile in 
        .. | .git | .gitignore | .gitmodules | .vim)
            continue;;
        *)
            ln -Fis "$PWD/$dotfiles" $HOME;;
    esac
done

echo "done"
