#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
apt-get update -yq && apt-get install git -yq
apt-get clean -y
sed -i 's/#*X11Forwarding.*/X11Forwarding yes/' /etc/ssh/sshd_config
sed -i 's/#*X11UseLocalhost.*/X11UseLocalhost no/' /etc/ssh/sshd_config