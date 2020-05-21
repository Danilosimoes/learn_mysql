select * from tb_funcionarios order by nome;
-- ordem alfabética

select * from tb_funcionarios order by 4;

select * from tb_funcionarios order by salario desc;
-- do maior para o menor

select * from tb_funcionarios order by salario desc, nome;
-- com o nome em ordem, após salarios ...

select * from tb_funcionarios  order by salario desc, nome limit 3, 7;

 
SELECT 
    *
FROM
    tb_funcionarios
WHERE
    YEAR(admissao) = 2020
        AND MONTH(admissao) = 05
        AND DAY(admissao) = 21
ORDER BY salario DESC , nome
LIMIT 3; 
-- impondo limites ... 
-- Order by e limit sempre no final do select ....

SELECT 
    *
FROM
    tb_funcionarios;


