#!/bin/bash
# Autor: Robson Vaamonde
# Site: www.procedimentosemti.com.br
# Facebook: facebook.com/ProcedimentosEmTI
# Facebook: facebook.com/BoraParaPratica
# YouTube: youtube.com/BoraParaPratica
# Data de criação: 16/04/2017
# Data de atualização: 16/04/2017
# Versão: 0.1
# Testado e homologado para a versão do Ubuntu Server 16.04 LTS x64
# Kernel >= 4.4.x
#
#Criação das variáveis globais e parâmetros utilizadas pelos scripts de instalação

#Domínio padrão
DOMINIO="pti.intra"

#Versão do Kernel instalada
KERNEL="`uname -r | cut -d'.' -f1,2`"

#versão do Kernel homologada
KVERSION="4.4"

#Senha padrão
PASSWORD="pti@2017"

#Versão do Ubuntu instalada
UBUNTU="`lsb_release -rs`"

#Versão do Ubuntu homologada
UVERSION="16.04"

#Identificação do Usuário logado
USUARIO="`id -u`"

#Indentificação do usuário Root
ROOT="0"
