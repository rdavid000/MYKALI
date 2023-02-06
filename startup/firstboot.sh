#!/bin/bash
echo "toto"
export DEBIAN_FRONTEND=noninteractive
echo "toto"
apt-get update -y
echo "toto"
apt-get install openssh-server sudo -y
usermod -aG sudo r2d2
newgrp sudo
sed -i 's/#*X11Forwarding.*/X11Forwarding yes/' /etc/ssh/sshd_config
sed -i 's/#*X11UseLocalhost.*/X11UseLocalhost no/' /etc/ssh/sshd_config
echo "toto"
apt-get install kali-linux-headless -y
apt-get install kali-linux-everything -y
apt-get clean -yq