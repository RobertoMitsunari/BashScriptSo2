#!/bin/bash
echo 'Escolha uma opção'
echo '1 - Criar um novo diretório, 2 - Excluir um diretório, 3 - Permitir acesso de escrita e leitura a um arquivo ou diretório, 4 - Fazer backups dos arquivos pessoais, 5 - Limpar meus arquivos temporários, 6 - Sair'
read opcao;
case "$opcao" in
	'1')
		echo 'Digite o nome da pasta'
		read pasta;
		mkdir "$pasta"
		;;
	'2')
		echo 'Digite o nome da pasta'
		read pasta;
		rmdir "$pasta"
		;;
	'3')
		echo 'Digite o nome do arquivo ou caminho do arquivo'
		read arquivos;
		chmod +rw "$arquivos"
		;;
	'4')
		echo 'Digite o local onde deve ser salvo o backup'
		read caminho_s;
		tar -czvf "$caminho_s/Backup.tar.gz" "$/home/$USER"
		;;
	'5')
		rm -rf /tmp/*
		;;
	*)
		echo 'FIM'
		;;
esac
		

