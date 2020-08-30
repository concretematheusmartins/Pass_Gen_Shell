#!/bin/env bash

#-----------HEADER-------------------------------------------------------------|
# AUTOR             : Matheus Martins 3mhenrique@gmail.com
# HOMEPAGE          : https://github.com/mateuscomh 
# DATA CRIA��O      : 29/08/2020 
# PROGRAMA          : Shell-Base
# VERS�O            : 1.0.2
# LICEN�A           : GPL3
# PEQUENA-DESCRI��O : Programa para criar senhas seguras via terminal
#
# CHANGELOG :

# 29/08/2020 18:00 - Adicionada valida��o de apenas n�mero a ser recebido pelo usu�rio
#                  - Adicionado cabe�alho para commit no git
#----------FIM-HEADER---------------------------------------------------------|

fecha="\033[m"
verde="\033[32;1m"
vermelho="\033[31;1m"
amarelo="\033[01;33m"

#----------FUNCOES------------------------------------------------------------|
gerarsenha(){

echo "$verde Informe a quantidade de caracteres para a ser gerada $fecha"
read max

case $max in
  ''|*[!0-9]*) echo "$vermelho Informe apenas com n�meros o tamanho da senha a ser gerada $fecha" >&2
  exit 1;;
  *)
    echo "$amarelo"
    </dev/urandom tr -dc 'A-Za-z0-9!"#$%&'\''()*+,-./:;<=>?@[\]^_{|}~' | head -c $max  ; echo "$fecha" 
    ;;
esac
}
#----------FIM-FUNCOES--------------------------------------------------------|
#Executando...
gerarsenha
