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
alias g='git'

auto_cdls()
{
    if [ "$OLDPWD" != "$PWD" ]; then
        ls
        OLDPWD="$PWD"
    fi
}

GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh

function share_history {
    history -a
    history -c
    history -r
}
PROMPT_COMMAND='share_history'
shopt -u histappend
export HISTSIZE=9999
