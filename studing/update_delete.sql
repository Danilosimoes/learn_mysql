SELECT 
    *
FROM
    tb_funcionarios;

UPDATE tb_funcionarios 
SET 
    admissao = '2020-05-21'
WHERE
    nome = 'Diego';
    

UPDATE tb_funcionarios 
SET 
    salario = '1200'
WHERE
    nome = 'edilaine';


UPDATE tb_funcionarios 
SET 
    salario = '1200',
    cadastro = NULL
WHERE
    id = '8';
    -- alterar dado


SELECT 
    *
FROM
    tb_funcionarios
WHERE
    id = '8';


DELETE FROM tb_funcionarios 
WHERE
    nome = 'Diego';
    -- delete dado



start transaction;

DELETE FROM tb_pessoas;

SELECT 
    *
FROM
    tb_pessoas;

rollback;
-- retornar ação


commit;
-- confirmar ação


insert into tb_pessoas values(null, 'Danilo', 'M');

truncate tb_pessoas;
-- zerar tabela




