#!bin/bash

echo "Criando diretorios para cada grupo/dep. ..."

mkdir /ADM
mkdir /ENG
mkdir /TI
mkdir /publico

echo "Criando grupo para cada depatarmento ..."

groupadd ADM
groupadd ENG
groupadd TI

echo "Criando usuarios ..."

useradd usuarioAdm1 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G ADM
useradd usuarioAdm2 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G ADM
useradd usuarioAdm3 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G ADM

useradd usuarioEng1 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G ENG
useradd usuarioEng2 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G ENG
useradd usuarioEng3 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G ENG

useradd usuarioTi1 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G TI
useradd usuarioTi2 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G TI
useradd usuarioTi3 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G TI

echo "Atribuindo permissoes aos diretorios"

chown root:ADM /ADM
chown root:ENG /ENG
chown root:TI /TI

chmod 770 /ADM
chmod 770 /ENG
chmod 770 /TI
chmod 777 /publico
