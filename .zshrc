export EDITOR=vim
export VISUAL=vim
export LC_ALL="en_US.UTF-8"

alias ..='cd ..'
alias ...='cd ../..'
alias spac='sudo pacman'
alias ls='ls -A --color=auto'
alias grep='grep --color=auto'
alias ccat='pygmentize -g -O style=colorful,linenos=1'
alias svim='sudo -e'
alias dd='dd status=progress'
alias e.='nohup dolphin . &> /dev/null &'

alias gs='git status'

alias sf='php bin/console'
alias phpunit='./vendor/bin/phpunit'

alias dj='python manage.py'
alias venv='python3 -m venv'


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

plasma-reboot() {
    kquitapp5 plasmashell
    kstart plasmashell
}

ws() {
    python -m http.server ${1:-8080} -b 127.0.0.1
}

cgcc () {
    gcc -o `basename $1 .c` $1
}

# Misc config that doesn't need to be versioned
if [ -f ~/.miscinit ]; then
    . ~/.miscinit
fi
