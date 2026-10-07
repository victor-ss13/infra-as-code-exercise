#!/bin/bash

echo "Criando diretórios base..."

mkdir /publico
mkdir /dev
mkdir /mkt
mkdir /ven

echo "Criando grupos de usuários..."

groupadd GRP_DEV
groupadd GRP_MKT
groupadd GRP_VEN

echo "Criando usuários..."
# Na minha versão do Ubuntu Server, a maneira funcional
# de se definir uma senha encriptada pe
# $(openssl passwd senha)

# GRP_DEV
useradd victor -m -s /bin/bash -p $(openssl passwd 123) -G GRP_DEV
passwd -e victor
useradd renato -m -s /bin/bash -p $(openssl passwd 123) -G GRP_DEV
passwd -e renato
useradd caio -m -s /bin/bash -p $(openssl passwd 123) -G GRP_DEV
passwd -e caio
useradd lucas -m -s /bin/bash -p $(openssl passwd 123) -G GRP_DEV
passwd -e lucas
useradd glauber -m -s /bin/bash -p $(openssl passwd 123) -G GRP_DEV
passwd -e glauber

# GRP_MKT
useradd duda -m -s /bin/bash -p $(openssl passwd 123) -G GRP_MKT
passwd -e duda
useradd thiago -m -s /bin/bash -p $(openssl passwd 123) -G GRP_MKT
passwd -e thiago

# GRP_VEN
useradd kamila -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
passwd -e kamila
useradd yan -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
passwd -e yan

echo "Especificando permissões dos diretórios..."

chown renato:GRP_DEV /dev
chown thiago:GRP_MKT /mkt
chown kamila:GRP_VEN /vem

chmod 770 /dev
chmod 770 /mkt
chmod 770 /vem
chmod 777 /publico

echo "Fim!"
