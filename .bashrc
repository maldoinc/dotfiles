alias pac='sudo pacman -S'
alias sf='php bin/console'
alias ..='cd ..'
alias so='. ~/.bashrc'
alias server='php -S localhost:8080'
alias e.='nohup dolphin . &> /dev/null &'
alias ls='ls -A --color=auto'
alias phpunit='./vendor/bin/phpunit'


export PS1="\[\033[1;36m\]\u@\h\[\033[0m\] \[\033[0;33m\]\W\[\033[0m\] >> "


if [ -f ~/init.sh ]; then
    . ~/init.sh;
fi


# Create and enter a new directory
mk() {
    mkdir -pv "$@" && cd "$@"
}

# Open vim
v() {
    if [ $# -eq 0 ]; then 
        vim .;
    else 
        vim "$@";
    fi
}


plasma-reboot() {
    kquitapp5 plasmashell
    kstart plasmashell
}
