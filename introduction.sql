show databases;

-- nao sei como fechar esse role do lado.. depois tu ve
-- bom
-- isso aqui e a "IDE" do msyql
-- tu consegue fazer tudo por aqui
-- o que vai fazer via shell
-- aqui e muito mais facil então fica aqui mesmo no seu curso
-- tudo ai em baixo e SQL
-- daqui para frente e contigo no curso
-- se tiver alguma treta so chamar
-- blz ?
-- beleza, valeu
-- após eu iniciar outro file, é só inserir um novo e ir de acordo com o curso?
-- isso 

-- criamos um banco
create database xpto_test;

-- falamos que vamos usar ele
use xpto_test;

-- criamos a tabela com duas colunas de string ( varchar )
 CREATE TABLE xpto_test (
 xtpo_column_1 VARCHAR(20),
 xtpo_column_2 VARCHAR(20)
 );
 
 -- selecionamos todos os dados da tabela
 select * from xpto_test;
 
 
 -- fizemos uns insert ( insercao ) de dados na tabela
 insert into xpto_test values ( 'xpto', 'xpto');
 insert into xpto_test values ( 'xpto1', 'xpto1');
 insert into xpto_test values ( 'xpto2', 'xpto2');
 insert into xpto_test values ( 'xpto3', 'xpto3');
 