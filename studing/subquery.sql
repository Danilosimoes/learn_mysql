use hcode;

insert into tb_pessoas values(null, 'Adilson', null);

select * from tb_pessoas;

select * from tb_pessoas where desnome like 'D%';

delete from tb_pessoas where idpessoa in(select idpessoa from tb_pessoas where desnome like 'D%');
-- revisar o pq não está realizando a sub... 

