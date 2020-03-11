#!/bin/sh
# Script Em Shell Bash para instalacao
# do serviço de SAMBA na versao 4
# Desenvolvido por Raphael Maria
# Na data de 17 de Janeiro de 2020
#


# yum -y install samba samba-client samba-common nfs-utils.x86_64 centos-release-nfs-ganesha28.noarch 
yum -y install samba.x86_64 samba-client.x86_64 samba-common.x86_64 samba-winbind.x86_64 samba-winbind-clients.x86_64 

mv /etc/samba/smb.conf /etc/samba/smb.conf.original
mkdir -p /mnt/storage
chcon -Rt samba_share_t /mnt/storage
chmod -R 0770 /mnt/storage
chown -R root:root /mnt/storage
ulimit -n 16384
echo "* - nofile 16384" >> /etc/security/limits.conf

#### Script SAMBA FOR CENTOS 7 ####
echo " # Criado por raphael maria
[global]
#####################################
####     Configuracao de REDE   #####
#####################################

    server role = standalone server
    workgroup = WORKGROUP
    netbios name = cinema
    server string = Samba Files
    keepalive = 20
    dns proxy = no
    max connections = 50
    max xmit = 65535


    security = user
    encrypt passwords = true
    passdb backend = tdbsam

    veto files = /.thumbs/.thumbs/.DS
    read raw = yes
    write raw = yes
    oplocks = yes
    getwd cache = yes

################################
##### configuracao Lixeira #####
################################
    vfs objects = full_audit, recycle
    recycle:versions = yes
    recycle:repository = /mnt/storage/lixeira
    recycle:keeptree = yes
    recycle:exclude = *.mp3, *.iso, *.exe, *.mkv, *.mp4 
    recycle:exclude_dir = tmp, cache

##################################
###### configuracao Auditoria ####
##################################
    full_audit:success = write, unlink, rename, rmdir, chmod, chown
    full_audit:prefix = %u|%S
    full_audit:failure = none
    full_audit:facility = local5
    full_audit:priority = notice

##########################################
###### configuracao Compartilhamentos ####
##########################################
    [lixeira]
        path = /mnt/storage/lixeira
        writable = yes
        create mask = 0700
        directory mask = 0700
        browseable = yes

#####################################
#### Compartilhamento de Arquivos ###
#####################################
    [DADOS]
        comment = Arquivos de Video Backup
        path = /mnt/storage/$varshare
        browseable = yes
        writable = yes
        write list = $varuser
        create mask = 0775
        directory mask = 0775
        guest ok = yes
        valid users = $varuser nobody guest
        veto files = *.rar, *.zip, *.tar, *.bmp" >> /etc/samba/smb.conf


USER = acesso
read USER
adduser $USER
echo "Digite a senha:"
read PWD
smbpasswd -a $USER -p $PWD