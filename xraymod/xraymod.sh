#!/bin/bash
# ANSI Escape Code
NC='\e[0m'
## Foreground
DEFBOLD='\e[39;1m'
RB='\e[31;1m'
GB='\e[32;1m'
YB='\e[33;1m'
BB='\e[34;1m'
MB='\e[35;1m'
CB='\e[35;1m'
WB='\e[37;1m'

# Source ANSI
# https://ansi.gabebanks.net/
echo ""
echo -e "${YB}[ INFO ] Change Custom Xray-core${NC}"
# Install Xray-core Mod
mkdir /backup
wget -O /backup/xray.mod.backup https://github.com/NevermoreSSH/Xcore-custompath/releases/download/v1.0.0/xray.linux.64bit
rm -rf /usr/local/bin/xray
cp /backup/xray.mod.backup /usr/local/bin/xray
chmod 755 /usr/local/bin/xray
systemctl restart xray
sleep 1
echo -e "${YB}[ INFO ] Change Custom Xray-core done${NC}"
echo ""
echo -e "${YB}Reboot in 5 sec${NC} "
sleep 5
reboot