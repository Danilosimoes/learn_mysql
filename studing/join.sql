select * from tb_funcionarios a inner join tb_pessoas b on a.idpessoa = b.idpessoa;

select * from tb_funcionarios inner join tb_pessoas using (idpessoa); 

select a.idfuncionario, b.idpessoa  from tb_funcionarios a inner join tb_pessoas b using(idpessoa); 
-- pra utilizar o using, é necessario ter o mesmo nome de coluna nas tabelas.

select a.idfuncionario, b.idpessoa  from tb_funcionarios a inner join tb_pessoas b  on a.idpessoa = b.idpessoa; 

insert into tb_pessoas values (null, 'Diego', null);

select * from tb_pessoas;

select * from tb_pessoas a  left join tb_funcionarios b on a.idpessoa = b.idpessoa;


select * from tb_pessoas a  right join tb_funcionarios b on a.idpessoa = b.idpessoa;




