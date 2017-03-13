# System aliases
alias pac='sudo pacman -S'
alias ..='cd ..'
alias server='php -S localhost:8080'
alias e.='nohup dolphin . &> /dev/null &'
alias ls='ls -A --color=auto'

# Dev aliases 
alias sf='php bin/console'
alias phpunit='./vendor/bin/phpunit'

export PS1="\[\033[1;36m\]\u@\h\[\033[0m\] \[\033[0;33m\]\W\[\033[0m\] >> "
export VISUAL=vim


mk() {
    mkdir -pv "$@" && cd "$@"
}

plasma-reboot() {
    kquitapp5 plasmashell
    kstart plasmashell
}


# Misc config that doesn't need to be versioned
if [ -f ~/.myinit ]; then
    . ~/.myinit
fi
