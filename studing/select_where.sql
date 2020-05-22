use hcode;

select * from tb_funcionarios;
select * from tb_pessoas;

select count(*) as total from  tb_funcionarios; 

select nome, salario as atual,
convert(salario * 1.1, dec(10,2))  as 'Salario com 10% de aumento'
from tb_funcionarios;
-- converter como

insert into tb_funcionarios (nome, salario, admissao, sexo) values ('Diego', 1300, current_date(), 'M');
-- inserindo valores
insert into tb_pessoas (nome, sexo) values ('Karen', 'F');


select * from tb_funcionarios where sexo = 'M';


update tb_funcionarios set salario = salario + 50 where nome = 'Danilo';
-- aletrar
update tb_funcionarios set salario = salario * 1.1 where nome = 'Edna';


select * from tb_funcionarios where salario != 1400 and sexo = 'M';
-- condicional com and, outra forma de diferente <>
select * from tb_funcionarios where nome = 'Denis';
-- igual
select * from tb_funcionarios where salario > 1400 or sexo = 'F';
-- condicional com or

-- Sempre tenha medo e respeito do 'and' e pavor do 'Or'!
-- Colocar parênteses para definir a precedencia de operador!


