#!/bin/bash
# Autor: Robson Vaamonde
# Site: www.procedimentosemti.com.br
# Facebook: facebook.com/ProcedimentosEmTI
# Facebook: facebook.com/BoraParaPratica
# YouTube: youtube.com/BoraParaPratica
# Data de criação: 31/05/2016
# Data de atualização: 23/01/2017
# Versão: 0.8
# Testado e homologado para a versão do Ubuntu Server 16.04 LTS x64
# Kernel >= 4.4.x
#
#Arquivo de configuração de parametros
source parametros.sh

#Validando o ambiente
if [ "$USUARIO" == "0" ]
	then
	if [ "$UBUNTU" == "16.04" ]
		then
		if [ "$KERNEL" == "4.4" ]
		then

			#Script para calcular o tempo gasto para a execução
			DATAFINAL=`date +%s`
			SOMA=`expr $DATAFINAL - $DATAINICIAL`
			RESULTADO=`expr 10800 + $SOMA`
			TEMPO=`date -d @$RESULTADO +%H:%M:%S`
				echo -e "Tempo gasto para execução: $TEMPO"
				echo -e "Pressione <Enter> para reinicializar o servidor: `hostname`"
			read
			sleep 2
			reboot

		else
			echo -e "Versão do Kernel: $KERNEL não homologada para esse script, versão: >= 4.4 "
			echo -e "Pressione <Enter> para finalizar o script"
			read
		fi
	else
		echo -e "Distribuição GNU/Linux: `lsb_release -is` não homologada para esse script, versão: $UBUNTU"
		echo -e "Pressione <Enter> para finalizar o script"
		read
	fi
else
	echo -e "Usuário não é ROOT, execute o comando com a opção: sudo -i <Enter> depois digite a senha do usuário `whoami`"
	echo -e "Pressione <Enter> para finalizar o script"
	read
fi
