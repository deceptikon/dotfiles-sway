#!/bin/bash

count=`checkupdates 2>/dev/null | wc -l`

if [[ "$count" != "0" ]]; then
  echo '{"text":"'$count'","tooltip":"'$count updates pending'","class":"notify"}' | jq --compact-output
else
  echo '{"text":"","tooltip":"System is up-to-date","class":"good"}' | jq --compact-output
fi
