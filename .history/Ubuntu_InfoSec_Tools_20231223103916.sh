#!/bin/sh

# Registrar o Ubuntu PRO
sudo pro attach C12wuWBwsaqFpf636EhNB61H9wkmQy

# Aplicativos Essenciais
sudo apt-add-repository universe
sudo apt update

sudp apt upgrade -y

sudo apt -y install python2-minimal
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2 1
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 2
sudo update-alternatives --config python

sudo apt update 
sudo apt install curl 
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
sudo python2 get-pip.py



sudo apt autoremove -y
sudo apt clean
export FONTCONFIG_PATH=/etc/fonts

# Adicionando Repo Kali no Ubuntu
wget -q -O - archive.kali.org/archive-key.asc | sudo  apt-key add
sudo apt update
cd ~/Downloads
sudo git clone https://github.com/LionSec/katoolin.git
sudo cp katoolin/katoolin.py /usr/bin/katoolin
sudo chmod +x /usr/bin/katoolin
sudo katoolin
