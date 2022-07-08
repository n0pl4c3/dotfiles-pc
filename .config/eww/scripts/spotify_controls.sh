#!/bin/bash
# Utilities to retrive easily processable data 
# from spotify-tui. Also my first time really using sed and it shows.
# Writing this I kinda realize that it's not necessary. But hey, good opportunity
# for me to get used to typing in dvorak.

get_song() {
  song=`spt pb -f %t 2>&1 | sed '/^Error:/d'`
  echo "$song"
}

get_artist() {
  artist=`spt pb -f %a 2>&1 | sed '/^Error:/d'`
  echo "$artist"
}

get_info() {
  song_info=`spt pb -f "%t - %a" 2>&1 | sed '/^Error:/d'`
  echo "$song_info"
}

get_playback_status() {
  song_info=`spt pb -f "%s" 2>&1 | sed '/^Error:/d'`

  if [ "$song_info" == "▶" ];then
    echo "Playing"
  elif [ "$song_info" == "" ];then
    echo ""
  else
    echo "Paused"
  fi
}


next_song() {
  spt pb -n > /dev/null 2>&1
}


previous_song() {
  spt pb -pp > /dev/null 2>&1
}

pause_song() {
  spt pb -t > /dev/null 2>&1
}

if [ "$1" == "song" ];then
  get_song
elif [ "$1" == "artist" ];then
  get_artist
elif [ "$1" == "format" ];then
  get_info
elif [ "$1" == "status" ];then
  get_playback_status
elif [ "$1" == "next" ];then
  next_song
elif [ "$1" == "previous" ];then
  previous_song
elif [ "$1" == "toggle" ];then
  pause_song
else
  echo "[ERROR] No/Invalid Paramters specified"
fi



