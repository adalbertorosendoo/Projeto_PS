#!/bin/bash

echo ""
read -p "Digite o nome do usuário atual: " USERS
echo -e "\nBackups que o usuário ${USERS} possui: "
echo ""
ls -l /home/$USERS/Projeto_PS/Backup
echo ""

read -p "Digite o nome do usuário cliente que você deseja fazer a restauração: " USER

read -p "Digite o IP de destino do cliente: " IP

read -p "Digite o nome do arquivo de backup que você deseja fazer a restauração: " ARQ

read -p "Digite o caminho absoluto do diretório onde será enviado o arquivo restaurado: " DIR

rsync -uahv /home/${USERS}/Projeto_PS/Backup/${ARQ} ${USER}@${IP}:${DIR}


