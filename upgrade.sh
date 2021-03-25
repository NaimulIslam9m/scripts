#!/bin/bash
apt update
sleep 1
clear
apt list --upgradable
for _ in {10..1}; do echo upgrading within $_ seconds; sleep 1; tput cuu1; tput el; done
clear
apt upgrade -y
clear