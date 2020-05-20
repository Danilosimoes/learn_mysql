use hcode;

select * from tb_funcionarios;
select * from tb_pessoas;

select count(*) as total from  tb_funcionarios; 

select nome, salario as atual,
convert(salario * 1.1, dec(10,2))  as 'Salario com 10% de aumento'
from tb_funcionarios;

insert into tb_funcionarios (nome, salario, admissao, sexo) values ('Diego', 1300, current_date(), 'M');
insert into tb_pessoas (nome, sexo) values ('Karen', 'F');


select * from tb_funcionarios where sexo = 'M';


update tb_funcionarios set salario = salario + 50 where nome = 'Danilo';
update tb_funcionarios set salario = salario * 1.1 where nome = 'Edna';


select * from tb_funcionarios where salario != 1400 and sexo = 'M';
select * from tb_funcionarios where nome = 'Denis';
select * from tb_funcionarios where salario > 1400 or sexo = 'F';
-- Sempre tenha medo e respeito do 'and' e pavor do 'Or'!
-- Colocar parênteses para definir a precedencia de operador!


