#!/bin/bash
# Instalando react Native
# Instalando NodeJs

echo "Instalando NodeJs e NPM"
sudo pacman -S zip unzip nodejs npm

# Instalando React Native CLI
echo "Instalando React Native CLI"
sudo npm install -g react-native-cli

# Instalando JDK
echo "Instalando JDK8"
sudo pacman -S jdk8-openjdk
echo "Setando Java 8 no sistema"
sudo archlinux-java set java-8-openjdk

# Criando pasa para skd android
echo "Criando pastas para Android SDK"
mkdir -p ~/Android/Sdk
cd ~/Android/Sdk
echo "Baixando SDK"
wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
echo "Extraindo SDK"
unzip sdk-tools-linux-4333796.zip

echo "Copiando export para o bashrc"
echo "export ANDROID_HOME=~/Android/Sdk" >> ~/.bashrc
echo "export PATH=${PATH}:${ANDROID_HOME}/tools" >> ~/.bashrc
echo "export PATH=${PATH}:${ANDROID_HOME}/platform-tools" >> ~/.bashrc

~/Android/Sdk/tools/bin/sdkmanager "platform-tools" "platforms;android-27" "build-tools;27.0.3"

rm sdk-tools-linux-4333796.zip
