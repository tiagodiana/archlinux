#!/bin/bash

yay -S android-sdk-build-tools android-apktool

sudo pacman -S metasploit

cd ~

wget https://github.com/aureljared/zipaligner/archive/v1.2.zip

unzip v1.2.zip -d zipalign

cd ~/zipalign/zipaligner-1.2

sudo chmod +x zipalign

sudo mv zipalign /usr/local/bin
