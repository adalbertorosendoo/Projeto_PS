#!/bin/bash

DATE=$(date '+%d-%m-%Y-%H-%M-%S')

read -p "Digite o nome do usuário da máquina que vai ser backupeada: " USER
echo ""
read -p "Digite o caminho absoluto do diretório que vai ser compactado: " DIR
echo ""
read -p "Digite o IP da máquina de destino: " IP
echo ""
read -p "Digite como deve se chamar a pasta do Arquivo backupeado: " PASTA

rsync -avh ${USER}@${IP}:${DIR} /tmp/backups

cd /tmp/backups

tar -czf $DATE.tar.gz /tmp/backups && mv /tmp/backups/$DATE.tar.gz /home/adalberto/Projeto_PS/Backup/${PASTA}
sleep 3
echo ""
echo "Backup executado com sucesso!"
echo ""

