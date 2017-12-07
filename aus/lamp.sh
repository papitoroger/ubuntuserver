# Atualizando as listas do apt-get
sudo apt-get update

# Instalando o LAMP-Server
sudo ape-get install lamp-server^ perl python links2

# Instalando o PhpMyAdmin
sudo apt-get install phpmyadmin php-mbstring php-gettext

# Atualizando as dependêncais do PhpMyAdmin
sudo phpenmod mcrypt
sudo phpenmod mbstring

#Parando o serviço do Apache2
sudo service apache2 stop

#Iniciando o serviço do Apache2
sudo service apache2 start

#Verificando o status do serviço do Apache2
sudo serviço apache2 status
