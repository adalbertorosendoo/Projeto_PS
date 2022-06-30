#!/bin/bash

# Esse é um Script de Backup Remoto.

mkdir /tmp/backups

while true; do #Início do laço do menu
	echo "====== OPÇÕES DO MENU ======
1 - Fazer Backup. 
2 - Listar todos os Backups salvos. 
3 - Restaurar Backup.
4 - Saia do script.
"
read -p "Digite uma opção: " opc
case $opc in
	1)
		echo "Iniciando o Backup..."
		echo ""
		./backup_maquinas.sh
		sleep 3
		echo ""
		;;
	2)
		read -p "Digite o nome do diretório que foi feito todos os backups e que você deseja listar: " DIR
		echo $(ls -lt -color /home/adalberto/Projeto_PS/${DIR})
		sleep 3 
		echo ""
		;;
	3)
		echo "Restauração em andamento..."
		source restore.sh
		echo ""
		echo "Restauração Concluída!"
		sleep 3
		;;
	4)
		echo -e "Finalizando o Script...\n"
		echo -e "Script finalizado às $(date '+%H:%M:%S')\n"
		sleep 3
		exit 0
		;;
	*)
		echo -e "\nSelecione uma opção Válida.\n"
		sleep 3
		;;
esac
done

