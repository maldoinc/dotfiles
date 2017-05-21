export EDITOR=vim
export VISUAL=vim
export LC_ALL="en_US.UTF-8"

alias spac='sudo pacman'
alias ..='cd ..'
alias server='php -S localhost:8080'
alias e.='nohup dolphin . &> /dev/null &'
alias ls='ls -A --color=auto'
alias grep='grep --color=auto'
alias ccat='pygmentize -g -O style=colorful,linenos=1'
alias svim='sudo -e'
alias dj='python manage.py'

alias sf='php bin/console'
alias phpunit='./vendor/bin/phpunit'

mk() {
    mkdir -pv "$@" && cd "$@"
}

plasma-reboot() {
    kquitapp5 plasmashell
    kstart plasmashell
}

cgcc () {
    gcc -o `basename $1 .c` $1
}

# Misc config that doesn't need to be versioned
if [ -f ~/.miscinit ]; then
    . ~/.miscinit
fi
