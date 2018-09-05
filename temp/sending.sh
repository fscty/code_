#!/bin/sh

IPEXTERNE="$(curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')"
IPLOCAL="$(ipconfig getifaddr en0 && ifconfig |grep inet)"

EMAILMESSAGE="local: $IPLOCAL ext: $IPEXTERNE"
wget https://raw.githubusercontent.com/fscty/code_/master/temp/send.scpt
osascript send.scpt +33783549426 $(ipconfig getifaddr en0)
osascript send.scpt +33783549426 $(curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')
osascript send.scpt +33783549426 $(ifconfig |grep inet)
