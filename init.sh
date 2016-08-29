#!/bin/sh

cd `dirname $0`

for dotfile in .?*; do
    case $dotfile in 
        .. | .git | .gitignore | .gitmodules | .vim)
            continue;;
        *)
            ln -Fis "$PWD/$dotfile" $HOME;;
    esac
done

echo "done"
