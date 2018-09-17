#/bin/sh

i3status | while :
do
	read INPUT
	PLAYING=""
	SPOTIFY=$(/home/joao/src/spotify-now/spotify-now -i "%artist - %title")
	if [[ "$SPOTIFY" != "" ]]; then
		PLAYING="$SPOTIFY | "
	fi
	RADIOTRAY=$(/home/joao/bin/radiotray-now-playing)
	if [[ "$RADIOTRAY" != "" ]]; then
		PLAYING="$RADIOTRAY | "
	fi
	echo "$PLAYING$INPUT" || exit 1
done
