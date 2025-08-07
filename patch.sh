#!/bin/bash

echo "Update system ... "
sudo apt update && sudo apt upgrade -y

echo "Install UFW and Fail2Ban..."
sudo apt install ufw fail2ban -y

echo "Config UFW..."
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 22/tcp  # Autoriser SSH
sudo ufw allow 80/tcp  # Autoriser HTTP
sudo ufw allow 443/tcp # Autoriser HTTPS
sudo ufw enable

echo "Launch Fail2Ban..."
sudo systemctl enable fail2ban
sudo systemctl start fail2ban

echo "Sécure SSH..."
sudo sed -i 's/#Port 22/Port 2222/' /etc/ssh/sshd_config  # Changer le port SSH
sudo sed -i 's/#PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config  # Désactiver l'accès root
sudo systemctl restart sshd

echo "Install ClamAV..."
sudo apt install clamav clamtk -y
sudo freshclam  


echo "UFW Status :"
sudo ufw status
echo "Statut de Fail2Ban :"
sudo systemctl status fail2ban
