#! /bin/bash
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout afaris.42.fr.key -out afaris.42.fr.crt -subj "/C=MO/L=BenGuerir/O=42/OU=Student/CN=[afaris.42.fr]"
sudo mv afaris.42.fr.key /etc/ssl/private/;
sudo mv afaris.42.fr.crt /etc/ssl/certs/;