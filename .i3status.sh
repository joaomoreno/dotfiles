#!/bin/bash

i3status | while :
do
	read INPUT
	PLAYING=""
	SPOTIFY=$($HOME/src/spotify-now/spotify-now -i "%artist - %title")
	if [[ "$SPOTIFY" != "" ]]; then
		PLAYING="$SPOTIFY | "
	fi
	echo "$PLAYING$INPUT" || exit 1
done
