#!/bin/sh
set -xe

chmod +x personal.sh
chmod +x startup.sh
chmod +x user.sh

apt install i3
apt install build-essential

./personal.sh
./user.sh
