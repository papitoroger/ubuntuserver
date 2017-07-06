<h1>Configuração do SSH Server</h1>

Negar o acesso ao SSH para o usuário ROOT<br>
PermitRootLogin no

Usuários ou grupos que tem permissão de acesso ao SSH<br>
AllowUsers vaamonde<br>
AllowGroups vaamonde

Usuários que não tem permissão de acesso ao SSH<br>
DenyUsers root


Banner que será apresentado no momento do acesso ao SSH<br>
Banner /etc/issue.net

Tempo de inatividade em segundo segundos<br>
LoginGraceTime 120<br>
ClientAliveInterval 180<br>
ClientAliveCountMax 0

Tentativa máxima de conexão<br>
MaxAuthTries 3

Endereço IP do servidor que está liberado para permitir conexões via SSH<br>
ListenAddress 10.26.44.33

<h1>Configuração das Interfaces</h1>

vim /etc/network/interface<br>
auto enp0s3<br>
iface enp0s3 inet static<br>
address 192.168.1.20<br>
netmask 255.255.255.0<br>
network 192.168.1.0<br>
broadcast 192.168.1.255<br>
gateway 192.168.1.1<br>
dns-nameservers 192.168.1.1 8.8.8.8 8.8.4.4<br>
dns-search vaamonde.intra<br>
dns-domain vaamonde.intra

vim /etc/default/grub<br>
net.ifnames=0<br>
update-grub

<h1>Configuração do TCP Wrappers</h1>

hosts.allow<br>
sshd: 192.168.1.45

hosts.deny<br>
ALL: ALL
