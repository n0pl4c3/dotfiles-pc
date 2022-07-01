export ZSH="$HOME/.config/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  rust
  colored-man-pages
)

# EnvVars for VPS etc.
source $HOME/.config/variables/addresses

source $ZSH/oh-my-zsh.sh

# TODO Emacs
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

alias dotman='/usr/bin/git --git-dir=$HOME/Repositories/dotfiles-pc --work-tree=$HOME'

wiki () {
  mkdir -pv "$HOME"/Downloads/wiki
  case $1 in
    (pull) rsync -u -r -h --progress "$VPS1":"$VPS_WIKI_DIR" "$HOME"/Downloads/wiki/ ;;
    (push) rsync -u -r -h --progress "$HOME"/Downloads/wiki/index.html "$VPS1":"$VPS_WIKI_DIR" ;;
    (open) xdg-open file://"$HOME"/Downloads/wiki/index.html ;;
    (*) echo "Unknown command $1"
            return 1 ;;
    esac
}