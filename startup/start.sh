#!/bin/bash
service ssh start
sysctl net.ipv6.conf.all.disable_ipv6=0
mkdir -p /dev/net
mknod /dev/net/tun c 10 200
echo -e "HELLO MYKALI\n"