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
mv Iosevka/*.ttf /usr/local/share/fonts/

git clone https://github.com/nakst/gf
pushd gf
./build.sh
cp ./gf2 /usr/bin/gf2
popd

xrdb ~/.Xresources
