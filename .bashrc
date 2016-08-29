export HISTCONTROL=ignoredoth
export HISTIGNORE="fg*:bg*:cd*:history*:ls*:clear*"
export HISTTIMEFORMAT='%Y/%m/%d %T : '
export LESSHISTFILE=-

shopt -s autocd
shopt -s cdspell
shopt -s dirspell
shopt -s dotglob

if [ "$(uname)" = 'Darwin' ]; then
    alias ls='ls -hG'
else
    alias ls='ls --color=auto'
fi
alias ls='ls -hG'
alias la='ls -a'
alias ll='ls -la'
alias a='./a.out'

auto_cdls()
{
    if [ "$OLDPWD" != "$PWD" ]; then
        ls
        OLDPWD="$PWD"
    fi
}
PROMPT_COMMAND="$PROMPT_COMMAND"$'\n'auto_cdls

