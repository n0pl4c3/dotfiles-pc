#!/bin/bash
spt() {
  if [[ ! $(pgrep -f spotifyd) ]]; then
      echo "Starting spotifyd..."
      spotifyd
  fi

  echo "Starting spotify-tui..."
  $HOME/.cargo/bin/spt
}
