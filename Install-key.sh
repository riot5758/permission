#!/bin/bash

# ======================================
# RIOT SSH KEY INSTALLER
# ======================================


set -e


GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'



echo -e "${GREEN}"
echo "━━━━━━━━━━━━━━━━━━━━━━━━"
echo " RIOT SSH KEY INSTALLER"
echo "━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "${NC}"



# cek root

if [ "$EUID" -ne 0 ]; then

echo -e "${RED}Harus root${NC}"

exit 1

fi



# ======================================
# SSH PUBLIC KEY
# ======================================


RIOT_SSH_KEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDOFXTh5ototIObrj+wys9Y3TJyOIj5d5M7eka1hvzgQF4xqNEXt/yZoVRPjFuu2tpJ7lJy8v6V7xotHdrmtDyJaMHTcQwl8taBWVJQ0/H/d8rbR/ZCKihkkeFvu0TC1SXg3o4s3heaueUeLnok0ZEigaxHuXfnESbVFu/guEvoS02T5R096cd22kxr+Q+FcKh+tUWRm67C5oi4Zyr0a9wNzYwHUN90QRZ6jGS1pMlMv3/4IATGfNJmE3Kg3f+T0XZnm1Fj+BNXsPztP5tDjZtzyg4WsayDpXl4at0EKI3TBRrHnygkYr5Kk95CoKftXhoG3ZMn7i7YocSaqg8BjSU18qWprppGWSLlNeSYKCMfwgnrd81Cw5kACWWR4IyMtJHAfci4M/2CfwehHNhVgHTGktK+xfeQl+XOuRlFtc2tqv9vh/sJFFgJreIVRMMM2sziVl6dVmmi5a/uwx6heM6tSt3wmxuaPhbkDMXF5SaAJtehVm2YV73JT9XpKsx45rzy2gdl02DjLl/qGtOIhVoTsqvagMnOVicSWhh+HPeaCvc2uyoL/ryoCXK++7fZ6aReiBvf4GyUdLJVtWAhOPAHhr+EeZdtG2lyMoAKGqCRpjQlg2XUqQ9nZ5zvTuUemB1qScaAeKYVOxHXTl0lhBEX/Y/Om4BRwHFxzPQ7ysvEOw=="




SSH_DIR="/root/.ssh"

AUTH_FILE="$SSH_DIR/authorized_keys"




# ======================================
# INSTALL KEY
# ======================================


mkdir -p "$SSH_DIR"


chmod 700 "$SSH_DIR"



touch "$AUTH_FILE"



if grep -Fxq "$RIOT_SSH_KEY" "$AUTH_FILE"

then

echo -e "${YELLOW}SSH Key sudah ada${NC}"


else


echo "$RIOT_SSH_KEY" >> "$AUTH_FILE"


echo -e "${GREEN}SSH Key berhasil dipasang${NC}"


fi



chmod 600 "$AUTH_FILE"




# ======================================
# LOG
# ======================================


mkdir -p /etc/riot


echo "$(date) SSH KEY INSTALLED" >> /etc/riot/install.log



echo -e "${GREEN}"
echo "━━━━━━━━━━━━━━━━━━━━━━━━"
echo " SELESAI"
echo "━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "${NC}"
