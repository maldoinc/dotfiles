PATH=$PATH:$HOME/.local/bin

export ZSH=$HOME/.oh-my-zsh
export EDITOR=nvim
export VISUAL=nvim
export LC_ALL=en_US.UTF-8
export LC_TIME=en_GB.UTF-8
export WINEARCH=win32
export TERMINAL=konsole

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

ZSH_THEME="jtriley"
plugins=(git)
source $ZSH/oh-my-zsh.sh
source ~/.functions
source ~/.aliases
