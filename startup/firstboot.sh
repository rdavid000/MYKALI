#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt update && apt -y install git
mkdir /root/git_install
cd /root/git_install
git clone https://github.com/rdavid000/MYKALI.git
RUN sed -i 's/#*X11Forwarding.*/X11Forwarding yes/' /etc/ssh/sshd_config
RUN sed -i 's/#*X11UseLocalhost.*/X11UseLocalhost no/' /etc/ssh/sshd_config
exit 1
