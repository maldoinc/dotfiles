alias pac='sudo pacman -S'
alias sf='php bin/console'
alias ..='cd ..'
alias so='. ~/.bashrc'
alias server='php -S localhost:8080'
alias e.='nautilus . &> /dev/null &'

export PS1="[\u@\h \W] "


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
