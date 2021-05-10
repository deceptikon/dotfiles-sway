#!/bin/bash

if [ "$1" != "refresh" ]; then
  dunstctl set-paused toggle
fi

status=`dunstctl is-paused`

if [ "$status" = "false" ]; then
  echo ''
else
  unread=`dunstctl count waiting`
  echo "$unread"
fi

