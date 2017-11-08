export ZSH=$HOME/.oh-my-zsh
export EDITOR=vim
export VISUAL=vim
export LC_ALL=en_US.UTF-8
export WINEARCH=win32

alias sudo='sudo '
alias ls='ls -A --color=auto'
alias grep='grep --color=auto'
alias ccat='pygmentize -g -O style=colorful,linenos=1'
alias svim='sudo -e'
alias dd='dd status=progress'
alias e.='nohup dolphin . &> /dev/null &'
alias zshrc="$EDITOR $HOME/.zshrc"
alias sctl='systemctl'
alias histgrep='cat ~/.zsh_history | grep'

alias gs='git s'
alias dc='docker-compose'

alias phpunit='./vendor/bin/phpunit'

alias dj='python manage.py'
alias venv='python3 -m venv'

dsh() {
    docker exec -it $1 bash
}

mk() {
    mkdir -pv "$@" && cd "$@"
}

clipfile() {
    contents=$(xclip -o)

    if [ -z $1 ]; then
        echo "ERR: No filename supplied"
        return
    fi

    if [ -z $contents ]; then
        echo "ERR: Clipboard is empty"
        return
    fi


    if echo $contents > $1; then
        echo "$contents\n\n${#contents}b written to: \033[0;36m$1\033[0m"
    else
        echo "ERR: Cannot write to '$1'"
    fi
}

sf() {
    if [ -f ./app/console ]; then
        php app/console $*
    else
        php bin/console $*
    fi
}


plasma-reboot() {
    kquitapp5 plasmashell
    kstart5 plasmashell
}

ws() {
    python -m http.server ${1:-8080} -b 127.0.0.1
}

cgcc () {
    gcc -o `basename $1 .c` $1
}

# start ssh agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh/.agent
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval "$(<~/.ssh/.agent)" > /dev/null
    ssh-add 2> /dev/null
fi

# Misc config that doesn't need to be versioned
if [ -f ~/.miscinit ]; then
    . ~/.miscinit
fi

ZSH_THEME="pmcgee"
plugins=(git)
source $ZSH/oh-my-zsh.sh
