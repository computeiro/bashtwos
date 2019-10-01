#!/bin/bash
workDir=/tmp/ambiente-snk
rm -rf $workDir

mkdir -p $workDir

logFile=$workDir/out.log

#Repositorio Deepin
sudo add-apt-repository ppa:leaeasy/dde


#Incluir: Visual Studio Code

#Meus aplicativos
arr=(\
	xdotool	sublime-text 	filezilla 		chromium-browser	\
	git		spotify-client 	virtualbox-qt 	gnome-gmail			\
	zssh	libsvn-java		vim-gtk3		xclip				\										\
	meld	firefox
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


# Colocar os scripts aqui ó : /opt/sankhya/devops/scripts

#PRECISAMOS DEFINIR O /opt/sankhya/ 
#"Incluir o /opt/sankhya/ireport + ireport.desktop"
#"jd-gui"
#"DWF Designer"
#"Navegador Sankhya"


# launch-slack.sh
# window-toogle.sh

#Baixar Flash plugin com Debugger para 
#Podemos criar um repositório para o flashplugin.so
# /usr/lib/mozilla/plugins


#exportação dos atalhos para um arquivo padrão e importação
# dconf dump /org/cinnamon/desktop/keybindings/ > dconf-settings.conf
# dconf load /org/cinnamon/desktop/keybindings/ < dconf-settings.conf

#$ find / -name libsvnjavahl-1.so # Use sudo in Ubuntu
#
#Although the library is installed, you still have to tell Java (when used for Eclipse) where to find it. 
#The JVM on Linux does not look in a lot of the standard locations to find the libraries. (This could obviously change in the future.) For example, 32-bit Debian/Ubuntu uses a standard location of /usr/lib/jni for libraries to be used from Java. However, the Oracle JVM does not currently look in this location. The easiest way to tell Java where to find the JavaHL library is to specify the following when starting the JVM:
#
#-Djava.library.path=</path/to/library>
#
#Example:
#
# -Djava.library.path=/usr/lib/jni


#baixar o 
#eclipse.tar.gz, sdks.tar.gz, as.tar.gz
