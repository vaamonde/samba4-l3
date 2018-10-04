#!/bin/bash
# Autor: Robson Vaamonde
# Site: www.procedimentosemti.com.br
# Facebook: facebook.com/ProcedimentosEmTI
# Facebook: facebook.com/BoraParaPratica
# YouTube: youtube.com/BoraParaPratica
# Data de criação: 16/04/2017
# Data de atualização: 04/10/2018
# Versão: 0.2
# Testado e homologado para a versão do Ubuntu Server 18.04.x LTS x64
# Kernel >= 4.15.x
#
#Criação das variáveis globais e parâmetros utilizadas pelos scripts de instalação

#Domínio padrão
DOMINIO="pti.intra"

#Versão do Kernel instalada
KERNEL="`uname -r | cut -d'.' -f1,2`"

#versão do Kernel homologada
KVERSION="4.15"

#Senha padrão
PASSWORD="pti@2018"

#Versão do Ubuntu instalada
UBUNTU="`lsb_release -rs`"

#Codinome da versão instalada
BIONIC="`lsb_release -c | cut -f2`"

#Versão do Ubuntu homologada
UVERSION="18.04"

#Identificação do Usuário logado
USUARIO="`id -u`"

#Indentificação do usuário Root
ROOT="0"
