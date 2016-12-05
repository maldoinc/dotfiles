alias inst='sudo apt-get install -y'
alias sf='php bin/console'
alias ..='cd ..'
alias so='. ~/.bashrc'
alias server='php -S localhost:8080'
alias e.='nautilus . &> /dev/null'

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
