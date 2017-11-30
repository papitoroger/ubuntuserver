echo "Instalando o Zip"
sudo apt-get install zip unzip

echo "Fazendo o download do Wordpress"
wget https://wordpress.org/latest.zip

echo "Descompactando o Wordpress"
unzip latest.zip

echo "Alterando as permissões"
chmod -Rfv 755 wordpress/

echo "Alterando o Dono e Grupo"
chown -Rfv www-data.www-data wordpress/
