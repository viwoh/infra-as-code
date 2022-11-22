#!/bin/bash
ls /home/$1 > /dev/null 2>&1 || {echo "O usuário não existe." ; exit 1; }

echo "ID do Usuário"
USERID=$(grep $1 /etc/passwd|cut -d":" -f3)

echo "Descrição"
DESC=$(grep $1 /etc/passwd|cut -d":" -f5 | tr -d ,)

echo "Total usado"
USOTOTAL=$(du -sh /home/$1|cut -f1)

echo "Último login"
lastlog -u $1

echo "Fim do script."
