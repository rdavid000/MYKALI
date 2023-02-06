#!/bin/bash
echo "toto"
export DEBIAN_FRONTEND=noninteractive
export DEBIAN_FRONTEND=noninteractive
apt update -y
apt upgrade -y
apt install openssh-server sudo -y
usermod -aG sudo r2d2
newgrp sudo
sed -i 's/#*X11Forwarding.*/X11Forwarding yes/' /etc/ssh/sshd_config
sed -i 's/#*X11UseLocalhost.*/X11UseLocalhost no/' /etc/ssh/sshd_config
apt install kali-linux-headless -y
apt install kali-linux-everything -y
apt install inetutils-ping nano -y
apt clean -yq