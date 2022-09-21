#!/bin/bash
# Infraestrutura como código: Script de provisionamento de um servidor WEB (Apache)
# Formação Linux Fundamentals - DIO
# Atualização de repositório e pacotes
echo "Atualizando servidor ..."
apt update
apt upgrade -y

# Instalação de descompactador (zip) e serviço web
echo "Instalando pacotes ..."
apt install unzip apache2 -y

# Download do site e descompactação
echo "Carregando arquivos do site ..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

# Implementar site
echo "Implementando site ..."
cp -R linux-site-dio-main/* /var/www/html/

echo "Processo concluído com sucesso!"