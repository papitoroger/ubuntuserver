#!/bin/bash

# Validando o ambiente, verificando se o usuário e "root"
USUARIO=`id -u`

if [ "$USUARIO" == "0" ]
then
  echo -e "Usuário é `whoami`, continuando a executar o script"
else
  echo -e "Usuário não é ROOT, `whoami`"
  echo -e "Pressione <Enter> para finalizar o script"
  read
  sleep 3
  clear
fi
