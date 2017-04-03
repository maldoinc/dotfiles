alias pac='sudo pacman -S'
alias ..='cd ..'
alias server='php -S localhost:8080'
alias e.='nohup dolphin . &> /dev/null &'
alias ls='ls -A --color=auto'
alias ccat='pygmentize -g'
alias svim='sudo -E vim'
alias dj='python manage.py'

alias sf='php bin/console'
alias phpunit='./vendor/bin/phpunit'

export VISUAL=vim
export LC_ALL="en_US.UTF-8"

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

dl () {
    cd ~/Downloads
    wget $@
}

# Misc config that doesn't need to be versioned
if [ -f ~/.miscinit ]; then
    . ~/.miscinit
fi
