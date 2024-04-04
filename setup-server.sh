#!/bin/bash

# Atualiza os repositórios
echo "Atualizando os repositórios..."
sudo apt update

# Atualiza as aplicações
echo "Atualizando as aplicações..."
sudo apt upgrade -y

# Instala apache2 e unzip se não estiverem instalados
echo "Instalando Apache2 e Unzip..."
sudo apt install apache2 unzip -y

# Faz o download do arquivo ZIP para a pasta /tmp
echo "Baixando o arquivo do site..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -O /tmp/site.zip

# Extrai o conteúdo do arquivo ZIP
echo "Extraindo o arquivo..."
sudo unzip /tmp/site.zip -d /tmp

# Copia o conteúdo para a pasta do Apache
echo "Copiando o conteúdo para o Apache..."
sudo cp -r /tmp/linux-site-dio-main/* /var/www/html/

echo "Script concluído."

