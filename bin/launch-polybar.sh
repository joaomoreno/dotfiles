#!/usr/bin/env bash
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar joao > /dev/null 2>&1 &
echo "Polybar launched"
