# Run this with sudo!
#!/bin/sh
set -xe

chmod +x personal.sh
chmod +x startup.sh

apt install i3
apt install build-essential

./personal.sh

wget https://github.com/be5invis/Iosevka/releases/download/v30.3.2/PkgTTF-IosevkaFixed-30.3.2.zip
unzip PkgTTF-IosevkaFixed-30.3.2.zip -d Iosevka
chmod 644 Iosevka/*.ttf
mv Iosevka/*.ttf /usr/local/share/fonts/
