export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="snack"
SOLARIZED_THEME="dark"
DEFAULT_USER="snack"

HIST_STAMPS="yyyy-mm-dd"

plugins=(
    git
    docker
    docker-compose
    tmux
)

ZSH_TMUX_AUTOSTART=true

source $ZSH/oh-my-zsh.sh

# Other configurations follow
