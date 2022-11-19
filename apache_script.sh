#./bin/bash
echo "fazendo upgrade..."
apt upgrade -y

echo "fazendo update"
apt update -y

echo "instalando apache2..."
apt install apache2 -y 

echo "deletar index padrao..."
cd /var/www/html
rm index.html

echo "acesso a pasta tmp"
cd /tmp/

echo "download arquivo..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "instalando unzip..."
apt install unzip

echo "unzipar arquivo..."
unzip main.zip 

echo "acessar pastas do site para mover"
cd linux-site-dio-main

echo "copiando arquivos para a pasta do apache..."
cp -R * /var/www/html/

