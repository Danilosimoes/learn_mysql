drop database tabela;

create database hcode;

create table tb_funcionarios (
id int,
nome varchar(100),
salario decimal(10,2),
admissao date,
sexo enum ('F', 'M'),
cadastro timestamp default current_timestamp()
);

insert into tb_funcionarios values(1, 'Danilo', 4999.99, '1994-01-28', 'M', null);

select * from tb_funcionarios;





