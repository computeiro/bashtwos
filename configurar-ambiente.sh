#!/bin/bash
workDir=/tmp/ambiente-snk
rm -rf $workDir

mkdir -p $workDir

logFile=$workDir/out.log

sudo mkdir /opt/bashutils
sudo mkdir /opt/sankhya

#Repositorio Deepin
sudo add-apt-repository ppa:leaeasy/dde


#Incluir: Visual Studio Code

#Meus aplicativos
arr=(\
	xdotool	sublime-text 	filezilla 		chromium-browser	\
	git		gnome-gmail 	virtualbox-qt 	deepin-terminal		\
	zssh	libsvn-java		vim-gtk3		deepin-scrot		\
	meld	firefox			xclip								\
)


for app in "${arr[@]}"
do
	sudo apt install --assume-yes $app
done

wget http://linuxdeepin.c3sl.ufpr.br/deepin/pool/main/d/deepin-scrot/deepin-scrot_2.0-0deepin_all.deb  \
-O $workDir/deepin-scrot.deb

wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb \
-O $workDir/dbeaver.deb


find $workDir -name '*.deb' -exec bash -c \
"sudo dpkg -i {} " \;
