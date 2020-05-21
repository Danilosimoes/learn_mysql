use hcode;

SELECT 
    *
FROM
    tb_funcionarios
WHERE
    nome LIKE '%a';
 -- termina
 
SELECT 
    *
FROM
    tb_funcionarios
WHERE
    nome LIKE '%D';
 -- começa
 
SELECT 
    *
FROM
    tb_funcionarios
WHERE
    nome LIKE '%a%';
 -- contém
 
SELECT 
    *
FROM
    tb_funcionarios
WHERE
    nome LIKE '__i%';
 -- posicional
 
SELECT 
    *
FROM
    tb_funcionarios
WHERE
    nome NOT LIKE 'D%';
 -- não começa com ...
 
SELECT 
    *
FROM
    tb_funcionarios
WHERE
    salario BETWEEN 1000 AND 1100;
 -- entre
 
SELECT 
    *
FROM
    tb_funcionarios
WHERE
    salario NOT BETWEEN 1000 AND 1100;
 -- não esteja entre
 
SELECT 
    *
FROM
    tb_funcionarios
WHERE
    SOUNDEX(nome) = SOUNDEX('Danes');
 -- busca por som
 



