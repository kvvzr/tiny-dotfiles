#!/bin/sh

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > dein_installer.sh
sh ./dein_installer.sh $HOME/.vim/dein.vim
rm -rf ./dein_installer.sh

ln -fs $PWD/dein.toml $HOME/.vim/dein.vim

for dotfile in .?*; do
    case $dotfile in 
        .. | .git | .gitignore | .gitmodules | .vim)
            continue;;
        *)
            ln -Ffs "$PWD/$dotfile" $HOME;;
    esac
done

echo "done"
