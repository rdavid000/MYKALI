#!/bin/bash
echo "toto"
export DEBIAN_FRONTEND=noninteractive
export DEBIAN_FRONTEND=noninteractive
apt update -y
apt upgrade -y
apt install openssh-server sudo wget -y
usermod -aG sudo r2d2
newgrp sudo
sed -i 's/#*X11Forwarding.*/X11Forwarding yes/' /etc/ssh/sshd_config
sed -i 's/#*X11UseLocalhost.*/X11UseLocalhost no/' /etc/ssh/sshd_config
apt install kali-linux-headless -y
apt install kali-linux-everything -y
apt install inetutils-ping nano -y
mkdir /home/r2d2/hack/git -p
wget https://raw.githubusercontent.com/internetwache/GitTools/master/Dumper/gitdumper.sh -O /home/r2d2/hack/git/gitdumper.sh
chmod +x /home/r2d2/hack/git/gitdumper.sh
wget https://raw.githubusercontent.com/internetwache/GitTools/master/Extractor/extractor.sh -O /home/r2d2/hack/git/extractor.sh
chmod +x /home/r2d2/hack/git/extractor.sh
apt clean -yq