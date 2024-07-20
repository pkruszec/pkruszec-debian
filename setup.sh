# Run this with sudo!
#!/bin/sh
set -xe

chmod +x personal.sh

apt install -y i3
apt install -y build-essential gdb
apt install -y tmux rxvt-unicode
apt install -y htop
# Libraries needed to build gf
apt install -y libx11-dev libfreetype-dev

./personal.sh

wget https://github.com/be5invis/Iosevka/releases/download/v30.3.2/PkgTTF-IosevkaFixed-30.3.2.zip
unzip PkgTTF-IosevkaFixed-30.3.2.zip -d Iosevka
chmod 644 Iosevka/*.ttf
mv Iosevka/*.ttf /usr/local/share/fonts/

git clone https://github.com/nakst/gf
pushd gf
./build.sh
cp ./gf2 /usr/bin/gf2
popd

xrdb ~/.Xresources
