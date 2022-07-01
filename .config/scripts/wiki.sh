#!/bin/sh 

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
