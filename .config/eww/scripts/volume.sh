#!/bin/bash

get_volume() {
  pulsemixer --get-volume | awk '{print $1;}'
}

set_volume() {
  pulsemixer --set-volume $1
}

if [ "$1" == "get" ];then
  get_volume
elif [ "$1" == "set" ];then
  set_volume "$2"
else
  echo "[ERROR] No/Invalid Paramters specified"
fi



