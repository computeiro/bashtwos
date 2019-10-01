#!/bin/bash

args=$(($#))

if [[ $args < 2 ]];
then
	>&2  echo "Você precisa passar 2 argumentos: [titulo da janela] [comando do aplicativo]"
	exit
fi

app_title=$1
app_cmd=$2
janela_app=''

getJanelaApp () {
	line=$(wmctrl -l |grep -i "$app_title" )

	if [[ -n $line ]];
	then
		janela_app=$(echo "$line" | cut -d' ' -f1)		
	fi
}


getJanelaApp 
janela_ativa=`xprop -root | grep _NET_ACTIVE_WINDOW | head -1 | cut -d' ' -f5`


if [[ $(($janela_app - $janela_ativa)) == 0 ]];
then
	xdotool windowminimize $janela_app
	exit
fi

if [[ ! -n $janela_app ]];
then
	sh -c "$app_cmd" > /dev/null &
	getJanelaApp	
fi

wmctrl -i -a $janela_app