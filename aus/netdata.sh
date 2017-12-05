sudo apt-get -y install zlib1g-dev gcc make git autoconf autogen automake pkg-config uuid-dev

git clone https://github.com/firehol/netdata.git --depth=1

cd netdata

sudo ./netdata-installer.sh
