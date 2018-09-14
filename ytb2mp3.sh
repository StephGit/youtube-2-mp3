#!/bin/bash
URL=$1
DIR=$2

# download audio and convert to mp3
download_and_convert() {
  youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 --output "$DIR/%(title)s.%(ext)s" $URL
}

check_path() {
  if [ -z "$DIR" ]; then
    DIR="~/Music"
  else
    mkdir -p "$DIR"
  fi
}

# check param
if [ $# = 0 ]; then
 echo "Download-URL is required"
else
 check_path
 download_and_convert
fi
