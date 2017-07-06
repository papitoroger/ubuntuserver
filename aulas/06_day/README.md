<h1>Configuração do SSH Server</h1>

# Negar o acesso ao SSH para o usuário ROOT
PermitRootLogin no

# Usuários ou grupos que tem permissão de acesso ao SSH
AllowUsers vaamonde
AllowGroups vaamonde

# Usuários que não tem permissão de acesso ao SSH
DenyUsers root


# Banner que será apresentado no momento do acesso ao SSH
Banner /etc/issue.net

# Tempo de inatividade em segundo segundos
LoginGraceTime 120
ClientAliveInterval 180
ClientAliveCountMax 0

# Tentativa máxima de conexão
MaxAuthTries 3

# Endereço IP do servidor que está liberado para permitir conexões via SSH
ListenAddress 10.26.44.33

<h1>Configuração das Interfaces</h1>

vim /etc/network/interface
auto enp0s3
iface enp0s3 inet static
address 192.168.1.20
netmask 255.255.255.0
network 192.168.1.0
broadcast 192.168.1.255
gateway 192.168.1.1
dns-nameservers 192.168.1.1 8.8.8.8 8.8.4.4
dns-search vaamonde.intra
dns-domain vaamonde.intra


vim /etc/default/grub
net.ifnames=0
update-grub

<h1>Configuração do TCP Wrappers</h1>

hosts.allow
sshd: 192.168.1.45

hosts.deny
ALL: ALL
