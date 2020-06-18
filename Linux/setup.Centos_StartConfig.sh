#!/bin/sh
# DESCRICAO: Efetua a configuração inicial do host CentOS 7 ou 8
# SINOPSE: Efetua a configuração inicial do host CentOS 7 ou 8
# USO/EXEMPLO: ./setup.Centos_StartConfig.sh
#
# OPCOES: 
# AUTHOR: Raphael Maria <http://raphaelmaria.com.br>
# VERSAO: 1.0.1 in 17 de Junho de 2020
# LICENCA: LICENSE GPL <http://gnu.org/licenses/gpl.html>

# Instalação de softwares básicos.
yum -y install dialog wget tar unzip vim make gcc dnf autoconf automake epel-release 

##### VARIAVEIS
VARHOSTNAME=$(dialog --stdout --inputbox 'Insira o nome  do hostname desta maquina: ' 0 0)
VARIPADDRESS=$(dialog --stdout --inputbox 'Insira o IP ADDRESS do hostname desta maquina: ' 0 0)
VARGATEWAY=$(dialog --stdout --inputbox 'Insira o GATEWAY do hostname desta rede: ' 0 0)


hostnamectl set-hostname $VARHOSTNAME
# Altera somente o IP Address de DHCP para FIXO com o ip designado anterimente.
VARINTERFACE=$(nmcli con show | tail -1 | awk '{print $1}')
nmcli con modify $VARINTERFACE ipv4.method manual ipv4.addresses $VARIPADDRESS/24 ipv4.gateway $VARGATEWAY
nmcli con up $VARINTERFACE

# Fazendo update de todo os sistema operacional
yum -y upgrade
yum -y update

# Instala o Dashboard WEB Red Hat Cockpit
yum -y install cockpit
systemctl enable --now cockpit.socket
firewall-cmd --permanent --zone=public --add-service=cockpit
firewall-cmd --reload

dialog --msgbox "Sua configuração iniciar foi concluida \nAcesse este dispositivo através do endereço \nhttps://$VARIPADDRESS:9090  \nusando o usuário de logado desta sessão do shell" 0 0