#!/bin/bash

KEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDOFXTh5ototIObrj+wys9Y3TJyOIj5d5M7eka1hvzgQF4xqNEXt/yZoVRPjFuu2tpJ7lJy8v6V7xotHdrmtDyJaMHTcQwl8taBWVJQ0/H/d8rbR/ZCKihkkeFvu0TC1SXg3o4s3heaueUeLnok0ZEigaxHuXfnESbVFu/guEvoS02T5R096cd22kxr+Q+FcKh+tUWRm67C5oi4Zyr0a9wNzYwHUN90QRZ6jGS1pMlMv3/4IATGfNJmE3Kg3f+T0XZnm1Fj+BNXsPztP5tDjZtzyg4WsayDpXl4at0EKI3TBRrHnygkYr5Kk95CoKftXhoG3ZMn7i7YocSaqg8BjSU18qWprppGWSLlNeSYKCMfwgnrd81Cw5kACWWR4IyMtJHAfci4M/2CfwehHNhVgHTGktK+xfeQl+XOuRlFtc2tqv9vh/sJFFgJreIVRMMM2sziVl6dVmmi5a/uwx6heM6tSt3wmxuaPhbkDMXF5SaAJtehVm2YV73JT9XpKsx45rzy2gdl02DjLl/qGtOIhVoTsqvagMnOVicSWhh+HPeaCvc2uyoL/ryoCXK++7fZ6aReiBvf4GyUdLJVtWAhOPAHhr+EeZdtG2lyMoAKGqCRpjQlg2XUqQ9nZ5zvTuUemB1qScaAeKYVOxHXTl0lhBEX/Y/Om4BRwHFxzPQ7ysvEOw=="


mkdir -p /root/.ssh

chmod 700 /root/.ssh


touch /root/.ssh/authorized_keys


grep -qxF "$KEY" /root/.ssh/authorized_keys || \
echo "$KEY" >> /root/.ssh/authorized_keys


chmod 600 /root/.ssh/authorized_keys


echo "RIOT SSH KEY INSTALLED"
