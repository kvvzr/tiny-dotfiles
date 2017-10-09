#!/bin/sh

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > dein_installer.sh
sh ./dein_installer.sh $HOME/.vim/dein.vim
rm -rf ./dein_installer.sh

for dotfile in .?*; do
    case $dotfile in 
        .. | .git | .gitignore | .gitmodules | .vim)
            continue;;
        *)
            ln -Ffis "$PWD/$dotfile" $HOME;;
    esac
done

echo "done"
