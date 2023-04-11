#!/bin/bash

echo "Criando diretorios."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios"

groupadd GRPADM
groupadd GRPVEN
groupadd GRPSEC

echo "Criando usuarios"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRPADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRPADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRPADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRPVEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRPVEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRPVEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRPSEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRPSEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRPSEC

echo "Especificando permissoes dos diretorios"

chown root:GRPADM /adm
chown root:GRPVEN /ven
chown root:GRPSEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM."

