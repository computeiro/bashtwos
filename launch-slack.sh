#!/bin/bash
/opt/bashutils/window-toogle.sh "| Sankhya" slack; if [[ $? == 0 ]];then  sleep 1 &&  xdotool key ctrl+k; fi
