#!/bin/bash

echo "Instalando e criando banco de dados."

apt search mysql-server
apt install mysql-server-8.0 -y
mysql -u root -p

show databases;
create database meubanco;
use meubanco;

echo "Criando tabelas, inserindo dados e selecionando."
create table Pessoas (PessoaID int, Nome varchar(50), Sobrenome varchar(50), Endereco varchar(100), Cidade varchar(50));
show tables;
insert into Pessoas (PessoaID int, Nome, Sobrenome, Endereco, Cidade) VALUES (1, 'akemi', 'fukushima', 'chome jingumae', 'shibuya')
select * from Pessoas;
