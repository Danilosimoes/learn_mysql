create database tabela;


use tabela;

create table clientes (
id int,
nome varchar(100)
);

insert into clientes values(1,'Danilo simões');

insert into clientes (nome, id) values('Danilo', 2);



select * from clientes;

