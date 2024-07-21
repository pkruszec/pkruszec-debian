# Run this with sudo!
#!/bin/sh
set -xe

chmod +x personal.sh

apt install -y htop wget unzip
apt install -y i3
apt install -y build-essential gdb
apt install -y tmux rxvt-unicode
# Libraries needed to build gf
apt install -y libx11-dev libfreetype-dev

./personal.sh

chmod 644 Iosevka/*.ttf
cp Iosevka/*.ttf /usr/local/share/fonts/

git clone https://github.com/nakst/gf
cd gf
./build.sh
cp ./gf2 /usr/bin/gf2
cd ..
