# Run this with sudo!
#!/bin/sh
set -xe

chmod +x personal.sh

apt-get install -y htop wget unzip
apt-get install -y i3
apt-get install -y build-essential gdb
apt-get install -y tmux rxvt-unicode
# Libraries needed to build gf
apt-get install -y libx11-dev libfreetype-dev

./personal.sh

chmod 644 Iosevka/*.ttf
cp Iosevka/*.ttf /usr/local/share/fonts/

git clone https://github.com/nakst/gf
cd gf
./build.sh
cp ./gf2 /usr/bin/gf2
cd ..
