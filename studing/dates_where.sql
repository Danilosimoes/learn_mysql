SELECT 
    *
FROM
    tb_funcionarios
WHERE
    cadastro > '2020.04.10';
-- selecionar datas maior que ...
-- pode ser com . , ou / ...


SELECT 
    *
FROM
    tb_funcionarios;

UPDATE tb_funcionarios 
SET 
    admissao = CURRENT_DATE()
WHERE
    id = '1';
-- alterando data para a atual ...



UPDATE tb_funcionarios 
SET 
    admissao = DATE_ADD(CURRENT_DATE(),
        INTERVAL 60 DAY)
WHERE
    id = '2';
-- adicionando intervalo de dias ...


SELECT 
    DATEDIFF(admissao, CURRENT_DATE()) AS 'diferença de dias'
FROM
    tb_funcionarios
WHERE
    id = 2;
-- diferença de datas ... 


SELECT 
    *
FROM
    tb_funcionarios
WHERE
    MONTH(admissao) = 5
        AND YEAR(cadastro) = 2020
        AND DAY(admissao) = 21;
-- selecionando mês, ano e dia ... 




