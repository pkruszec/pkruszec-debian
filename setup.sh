#!/bin/sh
set -xe

chmod +x personal.sh
chmod +x startup.sh

./personal.sh

apt install i3

cp user/.profile ~/.profile
