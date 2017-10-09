export HISTCONTROL=ignoredoth
export HISTIGNORE="fg*:bg*:cd*:history*:ls*:clear*"
export HISTTIMEFORMAT='%Y/%m/%d %T : '
export LESSHISTFILE=-
export TERM=xterm

shopt -s autocd
shopt -s cdspell
shopt -s dirspell
shopt -s dotglob

alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -la'
alias vf='vim -c "VimFiler -split -simple -winwidth=35 -toggle -no-quit -auto-cd"'

auto_cdls()
{
    if [ "$OLDPWD" != "$PWD" ]; then
        ls
        OLDPWD="$PWD"
    fi
}
