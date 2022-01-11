#!/bin/sh
'''
Script de Instalação de Apps para o time de desenvolvimento
EMPRESA: x
CRIADOR: Raphael A O Maria
SITE: www.raphaelmaria.com.br
WHATSAPP: +55 11 9 6061-1839
MAIL: raphaelmaria@outlook.com
VERSION: 1.0
CREATE: 7 de Janeiro de 2022
CHANGE: Read the document Version_Notes.txt

COMMAND FOR USE SCRIPT: 
sudo chmod +X start.sh
sudo chmod 777 start.sh
sudo ./start.sh

'''
# VARIAVEIS - ITENS QUE PODEM MUDAR COM O TEMPO E NECESSIDADE
##################################################################
#####        USANDO REPOSITORIO CANONICAL UBUNTU           #######
##################################################################
# ATUALIZACAO DOS PACOTES PADROES DO OS (VALIDADO 10/01/22)
sudo apt-get update
sudo apt-get upgrade
sudo apt-get autoremove
sudo apt distro-upgrade
#
# INSTALACAO DOS PACOTES PADROES E ESSENCIAIS (VALIDADO 10/01/22)
sudo apt-get install -y update-manager-core
sudo apt install -y gcc ansible wget vim git-core
sudo apt install -y dialog tree tar unzip make autoconf automake
sudo apt install -y net-tools
sudo apt install -y openssh-server

# INSTALACAO DE PACOTE MICROSOFT DONT NET-FRAMEWORK (VALIDADO 10/01/22)
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt-get install -y apt-transport-https
sudo apt-get install -y dotnet-sdk-5.0
sudo apt-get install -y aspnetcore-runtime-5.0
sudo apt-get install -y dotnet-runtime-5.0
sudo apt-get update

# INSTALACAO DO MOMO - BIBLIOTECA C++ (VALIDADO 10/01/22)
sudo apt install gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb [arch=amd64] https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update
sudo apt install -y mono-devel
sudo apt install -y mono-complete

# CONFIGURACAO DO EQUIPAMENTO (VALIDADO 10/01/22)
# RENOMEANDO A MAQUINA
varHostname=$(dialog --stdout --inputbox 'Insira o nome  do hostname desta maquina: ' 0 0)
sudo hostnamectl set-hostname $varHostname
sudo mkdir /deploy
sudo chmod 777 /deploy

# INSTALACAO DO JAVA 
sudo apt -y install default-jre            

# INSTALACAO DO JAVA JDK ORACLE OFFICIAL
sudo apt -y install default-jdk
sudo apt -y install openjdk-11-jre-headless
sudo apt -y install openjdk-8-jre-headless 

# INSTALACAO DO WINE
cd /deploy
sudo dpkg --add-architecture i386 
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'
sudo apt update
sudo apt -y install --install-recommends winehq-stable
sudo apt list --upgradable

#Node.js;
sudo apt -y install nodejs
############################################################


############################################################
######          INSTALACAO USANDO SNAP STORE        ########
############################################################
# INSTALACAO DO SNAP SHOP (AGREGADOR INTELIGENTE DE APPS)
sudo snap install snap-store

# INSTALACAO VIA SNAP STORE
# AndroidStudio;
sudo snap install android-studio --classic
# Eclipse;
sudo snap install eclipse --classic
# IntelliJ; 
sudo snap install intellij-idea-community --classic
# Notepad++;
sudo snap install notepad-plus-plus
# Postman;
sudo snap install postman
# PyCharm;
sudo snap install pycharm-community --classic
# Source Tree
sudo snap install source-git
# VS Code
sudo snap install code --classic
##############################################################

##############################################################
# INSTALACAO DOS SOFTWARES VIA DOWNLOAD
##############################################################
cd /deploy
# Google Chrome
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y
#DBeaver;
urlDBeaver="https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb"
sudo wget $urlDBeaver
sudo chmod 777 dbeaver-ce_latest_amd64.deb
sudo dpkg -i dbeaver-ce_latest_amd64.deb

#Docker;
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs) stable"
sudo apt update
sudo apt-get -y install docker-ce

#SoapUI;
urlSoapUI="https://s3.amazonaws.com/downloads.eviware/soapuios/5.6.1/SoapUI-x64-5.6.1.sh"
wget $urlSoapUI
sudo chmod +X SoapUI-x64-5.6.1.sh
sudo chmod 777 SoapUI-x64-5.6.1.sh
sudo ./SoapUI-x64-5.6.1.sh

#SQLDeveloper;
urlJdk="https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.deb"
wget -O jdk-17_linux-x64_bin.deb $urlJdk
sudo dpkg -i jdk-17_linux-x64_bin.deb

urlSQLDeveloper="https://rmtechfiles.s3.amazonaws.com/Applications/sqldeveloper-21.4.1.349.1822-no-jre.zip"
wget $urlSQLDeveloper
unzip sqlcl-21.4.*.zip
sudo mv sqldeveloper /opt/
sudo /opt/sqldeveloper/sqldeveloper.sh
sudo chmod +x /opt/sqldeveloper/sqldeveloper.sh
sudo ln -s /opt/sqldeveloper/sqldeveloper.sh /usr/local/bin/sqldeveloper
cd /usr/share/applications
ls -ltr *.desktop
#sudo vi sqldeveloper.desktop
sudo echo "[Desktop Entry]" >> /usr/share/applications/sqldeveloper.desktop
sudo echo "Exec=sqldeveloper" >> /usr/share/applications/sqldeveloper.desktop
sudo echo "Terminal=false" >> /usr/share/applications/sqldeveloper.desktop
sudo echo "StartupNotify=true" >> /usr/share/applications/sqldeveloper.desktop
sudo echo "Categories=GNOME;Oracle;" >> /usr/share/applications/sqldeveloper.desktop
sudo echo "Type=Application" >> /usr/share/applications/sqldeveloper.desktop
sudo echo "Icon=/opt/sqldeveloper/icon.png" >> /usr/share/applications/sqldeveloper.desktop



#SublimeText;
sudo wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get -y install sublime-text


###############################################################
######      INSTALACAO USANDO ARQUIVOS DO WINDOWS    ##########
###############################################################
# INSTALACAO DE ARQUIVOS EXE
# URL
urlWinSCP="https://winscp.net/download/WinSCP-5.19.5-Setup.exe"
urlWinmerge="https://github.com/WinMerge/winmerge/releases/download/v2.16.16/WinMerge-2.16.16-x64-Setup.exe"
urlCygWin="https://www.cygwin.com/setup-x86_64.exe"
urlEnterpriseArch="https://www.sparxsystems.com/bin/easetup.msi"


# DOWNLOADS
wget -O WinSCP-5.19.5-Setup.exe $urlWinSCP
wget -O WinMerge-2.16.16-x64-Setup.exe $urlWinmerge
wget -O CygWin.exe $urlCygWin
wget -O EAsetup.msi $urlEnterpriseArch

sudo chmod -R 777 /deploy/*

sudo /bin/wine /deploy/WinSCP-5.19.5-Setup.exe
sudo /bin/wine /deploy/WinMerge-2.16.16-x64-Setup.exe
sudo /bin/wine /deploy/CygWin.exe
sudo /bin/wine /deploy/EAsetup.msi

################################################################

################################################################
######      TROCANDO INTERFACE GNOME P/ CINNAMON       #########
# REMOVENDO GNOME (GDM3)
sudo apt purge adwaita-icon-theme geogebra-gnome gir1.2-gtd-1.0 \
gnome-accessibility-profiles gnome-applets-data gnome-audio gnome-backgrounds \
gnome-cards-data gnome-common gnome-desktop-testing gnome-dvb-daemon \
gnome-extra-icons gnome-flashback-common \
gnome-humility-icon-theme gnome-hwp-support gnome-icon-theme \
gnome-icon-theme-gartoon gnome-icon-theme-gartoon-redux \
gnome-icon-theme-gperfection2 gnome-icon-theme-nuovo gnome-icon-theme-suede \
gnome-icon-theme-yasis gnome-mime-data gnome-nds-thumbnailer \
gnome-packagekit-data gnome-panel-control gnome-panel-data \
gnome-pkg-tools gnome-recipes-data gnome-remote-desktop gnome-settings-daemon-dev \
gnome-shell-pomodoro-data gnome-software-common gnome-software-doc \
gnome-theme-gilouche gnome-video-effects-extra gnome-video-effects-frei0r \
guile-gnome2-dev guile-gnome2-glib libgnome-autoar-doc libgnomecanvas2-common \
libgnomecanvas2-doc libgnomecanvasmm-2.6-doc libgnome-panel-doc libgnome-todo-dev \
libopenrawgnome7:amd64 libopenrawgnome-dev libreoffice-gnome libxine2-gnome:amd64 \
nautilus-sendto pidgin-gnome-keyring plymouth-theme-ubuntu-gnome-logo \
plymouth-theme-ubuntu-gnome-text ubuntu-gnome-wallpapers \
ubuntu-gnome-wallpapers-trusty ubuntu-gnome-wallpapers-utopic \
ubuntu-gnome-wallpapers-xenial ubuntu-gnome-wallpapers-yakkety
sudo apt purge gnome-exe-thumbnailer
sudo apt purge slim openbox geoclue-2.0

sudo apt autopurge

sudo apt install cinnamon-desktop-environment -y

sudo apt update
sudo apt install --fix-broken -y
sudo apt upgrade -y
sudo apt distro-upgrade -y
#########################################################################################
#########         INSTALACAO DE COMPONENTES DE SEGURANCA               ##################
#########################################################################################
varFalconKey=$(dialog --stdout --inputbox 'Insira a chave do CrownStrike Falcon: ' 0 0)

# INSTALACAO DO CROWN-STRIKE
sudo wget 'https://rmtechfiles.s3.amazonaws.com/ScriptFiles/LOFT/linux/falcon-sensor_6.14.0-11110_amd64.deb' -O /tmp/falcon-sensor_6.14.0-11110_amd64.deb
sudo chmod 777 /tmp/falcon-sensor_6.14.0-11110_amd64.deb
sudo dpkg -i /tmp/falcon-sensor_6.14.0-11110_amd64.deb
sudo /opt/CrowdStrike/falconctl -s --cid= $varFalconKey
sudo service falcon-sensor start
sudo systemctl enable falcon-sensor --now
ps -e | grep falcon-sensor

'''
# INSTALACAO DO DLP (DATA LOSS PROVIDER)

07/01/2022 - FATAL ESSA INFORMACAO

# INSTALACAO FILTRO WEB (PROXY)

07/01/2022 - FATAL ESSA INFORMACAO
'''

####################################################################################################
########       CRIANDO USUARIO LOCAL COM PERMISSOES SUDO (CLIENTE FINAL/USER)               ########
####################################################################################################
varNome=$(dialog --stdout --inputbox 'Insira o primeiro nome do usuário: ' 0 0)
varSobrenome=$(dialog --stdout --inputbox 'Insira o sobrenome do usuário: ' 0 0)
varUsername=$varNome.$varSobrenome

sudo adduser $varUsername
sudo usermod -aG sudo $varUsername
sudo passwd $varUsername
echo -e "Mudar123" | sudo passwd --stdin $varUsername

dialog \
    --title "Configuração Finalizada!"  \
    --msgbox "Instalação foi efetuada com sucesso, \nA maquina será reiniciada em 10 segundos." \
    0 0

sleep 15

sudo reboot