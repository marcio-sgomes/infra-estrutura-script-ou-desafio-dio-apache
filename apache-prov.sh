#!/bin/bash

echo "=== Atualizando o servidor ==="
apt-get update -y
apt-get upgrade -y

echo "=== Instalando o Apache2 e o Unzip ==="
apt-get install apache2 -y
apt-get install unzip -y

echo "=== Descarregando a aplicação web para o diretório /tmp ==="
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "=== Descompactando os arquivos e copiando para o diretório do Apache ==="
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "=== Processo concluído com sucesso! ==="

