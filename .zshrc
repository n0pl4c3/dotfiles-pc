export ZSH="$HOME/.config/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  rust
  colored-man-pages
)

# EnvVars for VPS etc.
source $HOME/.config/variables/addresses

# TiddlyWiki Server Sync
source $HOME/.config/scripts/wiki.sh

# Aliases for easy dotfile management
source $HOME/.config/scripts/dotfiles.sh

source $ZSH/oh-my-zsh.sh

# TODO Emacs
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi


