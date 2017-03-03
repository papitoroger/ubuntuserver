#Comandos para analisar o servidor Microsoft:

Dcdiag: Analisa o estado dos controladores de domínio em uma floresta ou empresa e reporta os problemas para ajudar na solução de problemas.
Site: https://technet.microsoft.com/pt-br/library/cc731968(v=ws.10).aspx

Dcgpofix: Recria os objetos de diretiva de grupo (GPOs) padrão para um domínio.
Site: https://technet.microsoft.com/pt-br/library/hh875588(v=ws.10).aspx

Gpresult: Exibe as informações do conjunto de diretivas resultante (RSoP) para um usuário remoto e o computador.
Site: https://technet.microsoft.com/pt-br/library/cc733160(v=ws.10).aspx

Netdiag: A ferramenta de diagnóstico de linha de comando Netdiag ajuda a isolar problemas de conectividade e rede, realizando uma série de testes para determinar o estado do seu cliente de rede. 
Site: https://technet.microsoft.com/pt-br/library/cc731434(v=ws.10).aspx

<b>Comandos Úteis</b>
Lista de comandos:

nslookup pti.intra
nslookup ptispo01dc01
nslookup ptispo01dc01.uff.intra

ping pti.intra
ping ptispo01dc01
ping ptispo01dc01.uff.intra

gpresult /r | more

nltest /dclist:pti.intra

dcdiag | more

repadmin /viewlist *
repadmin /showrepl

netdom query fsmo

dnscmd /info | more
dnscmd /zoneinfo pti.intra | more

netdom query fsmo

http://kpytko.pl/active-directory-domain-services/active-directory-troubleshooting-tools/
