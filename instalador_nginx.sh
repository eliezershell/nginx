#!/bin/bash

sudo apt update
if [ $? -gt 0 ]; then
        echo "Erro ao atualizar pacotes do repositório APT!"; exit 0
fi

sudo apt install nginx -y
if [ $? -gt 0 ]; then
        echo "Erro ao instalar Nginx!"; exit 0
fi

echo "------------------------------Verificando Nginx------------------------------"
sudo systemctl status nginx

echo "------------------------------Instalação concluída com sucesso!------------------------------"
echo "----------------------Script by: Eliezer Ribeiro | linkedin.com/in/elinux--------------------"
exit 0

