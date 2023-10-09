#!/bin/bash

sudo apt update
if [ $? -gt 0 ]; then
        echo "Erro ao atualizar pacotes do repositório APT!"; exit 0
fi

sudo apt install apache2 -y
if [ $? -gt 0 ]; then
        echo "Erro ao instalar Apache2!"; exit 0

echo "------------------------------Verificando Apache2------------------------------"
sudo systemctl status apache2
echo "-------------------------------------------------------------------------------"

echo "------------------------------Instalação concluída com sucesso!------------------------------"
echo "----------------------Script by: Eliezer Ribeiro | linkedin.com/in/elinux--------------------"
exit 0
