#!/bin/bash

echo "Script que gera relatório de informações da máquina atual."

echo "Versão do Kernel."
KERNEL=$(uname -r)

echo "Relatório da Máquina."
HOSTNAME=$(hostname)

echo "Quantidade de CPUs/Core."
CPUNO=$(cat /proc/cpuinfo | grep "model name"|wc -l)

echo "Modelo da CPU."
CPUMODEL=$(cat /proc/cpuinfo |grep "model name"|head -n1| cut -c14-)

echo "Memória total."
MEMTOTAL=$(expr $(cat proc/meminfo |grep MemTotal|tr -d ' '| cut -d: -f2|tr -d kB) / 1024)
 
echo "Partições."
FILESYS=$(df -h|egrep -v '(tmpfs|udev)')

echo "Atividade da máquina."
UPTIME=$(uptime -s)

echo "Fim do script."
