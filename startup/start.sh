#!/bin/bash
service ssh start
sysctl net.ipv6.conf.all.disable_ipv6=0
echo -e "HELLO MYKALI\n"