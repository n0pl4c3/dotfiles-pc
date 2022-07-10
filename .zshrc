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

# To prevent issues with ssh and missing terminfo
alias ssh="TERM=xterm-256color ssh"
