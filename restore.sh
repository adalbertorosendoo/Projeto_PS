#!/bin/bash

echo ""
read -p "Digite o nome do usuário: " USERS
echo -e "\nBackups que ${USERS} possui: "
echo ""
ls /home/$USERS/Projeto_PS/Backup
echo ""

read -p "Digite o nome do usuário que deseja fazer a restauração: " USER

read -p "Digite o IP de destino: " IP

read -p "Digite o nome do arquivo que deseja fazer a restauração: " ARQ

read -p "Digite o caminho absoluto do diretório onde será enviado o arquivo restaurado: " DIR

rsync -uahv ${USER}@${IP}:${DIR} /home/${USERS}/Projeto_PS/Backup/${ARQ}


