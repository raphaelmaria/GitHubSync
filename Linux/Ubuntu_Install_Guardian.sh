#!/usr/bin/env bash
'''
Guardian is a security program which works in conjunction with Snort to automaticly update firewall rules based on alerts generated by Snort.
The updated firewall rules block all incoming data from the IP address of the attacking machine (the machine which caused Snort to generate an alert.
There is also logic in place which pervents blocking important machines, such as DNS servers, gateways, and whatever else you want.
'''

cd /opt
sudo wget https://www.chaotic.org/guardian/guardian-1.7.tar.gz
sudo tar -zxvf guardian-1.7.tar.gz


echo "[Unit]
Description=Inicia o Guardian

[Service]
Type=simple
ExecStart=/bin/bash /opt/guardian-1.7/guardian.pl -c /etc/guardian.conf

[Install]
WantedBy=multi-user.target" | sudo tee -a /etc/systemd/system/guardian.service