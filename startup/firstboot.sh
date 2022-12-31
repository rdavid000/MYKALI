#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
apt-get update -y
apt-get install openssh-server git -y
apt-get clean -yq
service ssh restart
sed -i 's/#*X11Forwarding.*/X11Forwarding yes/' /etc/ssh/sshd_config
sed -i 's/#*X11UseLocalhost.*/X11UseLocalhost no/' /etc/ssh/sshd_config
exit 0