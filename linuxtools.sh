#!/usr/bin/env bash
# ----------------------------- VARIÁVEIS ----------------------------- #


URL_GOOGLE_CHROME="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
URL_VS_CODE="https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"


DIRETORIO_DOWNLOADS="$HOME/Downloads/programas"


#PROGRAMAS_PARA_INSTALAR=(

#)


sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock


sudo apt update -y


mkdir "$DIRETORIO_DOWNLOADS"
wget -c "$URL_GOOGLE_CHROME"       -P "$DIRETORIO_DOWNLOADS"
wget -c "$URL_VS_CODE"       -P "$DIRETORIO_DOWNLOADS"


sudo dpkg -i $DIRETORIO_DOWNLOADS/*.deb

# Instalar programas no apt
#for nome_do_programa in ${PROGRAMAS_PARA_INSTALAR[@]}; do
 # if ! dpkg -l | grep -q $nome_do_programa; then # Só 
  #  apt install "$nome_do_programa" -y
  #else
   # echo "[INSTALADO] - $nome_do_programa"
  #fi
#done


sudo snap install spotify
sudo snap install slack --classic
sudo snap install insomnia
sudo snap install discord
sudo snap install beekeeper-studio



sudo apt update && sudo apt dist-upgrade -y
flatpak update
sudo apt autoclean
sudo apt autoremove -y
