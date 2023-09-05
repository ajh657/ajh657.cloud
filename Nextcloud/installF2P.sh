#!bin/bash

apt-get update

apt-get install fail2ban

cp ./nextcloud.conf /etc/fail2ban/filter.d/nextcloud.conf

cp ./nextcloud.local /etc/fail2ban/jail.d/nextcloud.local