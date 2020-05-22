insert into tb_pessoas values(1, 'Danilo', 'M');

insert into tb_pessoas (nome, sexo) values('Sheila', 'F');

select * from tb_pessoas;

insert into tb_pessoas (nome, sexo) values
('Wendel', 'M'),
('Emely', 'F'),
('Ademar', 'M'),
('Edna', 'F'),
('Edilaine', 'F'),
('Denis', 'M');

select * from tb_funcionarios;
select * from tb_pessoas;

-- insert into tb_funcionarios
select id, nome, 1000.00, current_date(), sexo, null from tb_pessoas;
-- transferencia de dados
