export PATH=$HOME/bin:/usr/local/bin:$PATH

export PERSONAL_SCRIPTS_DIR=
export ZSH="$HOME/.oh-my-zsh"
export EDITOR='vim'
ZSH_THEME="agnoster"

plugins=(
    git
    autojump
)

source $ZSH/oh-my-zsh.sh

prompt_context () { }                   # redefine prompt_context for hiding user@hostname

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
            tmux attach -t default || tmux new -s default
fi

alias takeover="tmux detach -a"

HISTFILE=~/.zsh_history
HISTSIZE=999999999
SAVEHIST=$HISTSIZE
