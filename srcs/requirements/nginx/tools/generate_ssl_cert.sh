#! /bin/bash
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout afaris.42.fr.key -out afaris.42.fr.crt -subj "/C=MA/ST=Casablanca/L=Casablanca/O=Global Security/OU=IT Department/CN=42.fr"
sudo mv afaris.42.fr.key /etc/ssl/private/;
sudo mv afaris.42.fr.crt /etc/ssl/certs/;