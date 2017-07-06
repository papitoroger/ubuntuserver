<h1>Trabalhando com Hard Disk</h1>

<h1>Criando script de automatização</h1>

<h1>Instalando o Webmin</h1>

sudo apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python

wget http://prdownloads.sourceforge.net/webadmin/webmin_1.831_all.deb

dpkg -i webmin_1.831_all.deb

<h1>Instalando o Netdata</h1>

apt-get -y install zlib1g-dev gcc make git autoconf autogen automake pkg-config uuid-dev

git clone https://github.com/firehol/netdata.git --depth=1

cd netdata

./netdata-installer.sh
