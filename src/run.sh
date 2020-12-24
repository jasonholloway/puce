#!/bin/bash

mkdir -p /root/.ssh
echo 'IdentityFile /root/.ssh/id_rsa' >> /etc/ssh/ssh_config
echo 'StrictHostKeyChecking=no' >> /etc/ssh/ssh_config
echo "$SSHKEY" > /root/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa

exec sshpass -e "$@"

