alias pac='sudo pacman -S'
alias sf='php bin/console'
alias ..='cd ..'
alias so='. ~/.bashrc'
alias server='php -S localhost:8080'
alias e.='nohup dolphin . &> /dev/null &'

export PS1="[\u@\h \W] "


if [ -f ~/init.sh ]; then
    . ~/init.sh;
fi


# Create and enter a new directory
function mk() {
    mkdir "$@" && cd "$@"
}

# Open vim
function v() {
    if [ $# -eq 0 ]; then 
        vim .;
    else 
        vim "$@";
    fi
}
