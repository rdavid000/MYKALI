#!/bin/bash
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
mkdir /home/r2d2/hack/rce -p
wget https://raw.githubusercontent.com/synacktiv/php_filter_chain_generator/main/php_filter_chain_generator.py -O /home/r2d2/hack/rce/php_filter_chain_generator.py
chmod +x /home/r2d2/hack/git/php_filter_chain_generator.py
mkdir /home/r2d2/hack/privesc -p
wget https://raw.githubusercontent.com/rebootuser/LinEnum/master/LinEnum.sh -O /home/r2d2/hack/privesc/LinEnum.sh
chmod +x /home/r2d2/hack/privesc/LinEnum.sh
wget https://raw.githubusercontent.com/The-Z-Labs/linux-exploit-suggester/master/linux-exploit-suggester.sh -O /home/r2d2/hack/privesc/linux-exploit-suggester.sh
chmod +x /home/r2d2/hack/privesc/linux-exploit-suggester.sh
wget https://raw.githubusercontent.com/Cerbersec/scripts/master/linux/linpeas.sh -O /home/r2d2/hack/privesc/linpeas.sh
chmod +x /home/r2d2/hack/privesc/linpeas.sh