insert into tb_pessoas values(1, 'Danilo', 'M');

insert into tb_pessoas (nome, sexo) values('Sheila', 'F');

SELECT 
    *
FROM
    tb_pessoas;

insert into tb_pessoas (nome, sexo) values
('Wendel', 'M'),
('Emely', 'F'),
('Ademar', 'M'),
('Edna', 'F'),
('Edilaine', 'F'),
('Denis', 'M');

SELECT 
    *
FROM
    tb_funcionarios;
    
    
SELECT 
    *
FROM
    tb_pessoas;

-- insert into tb_funcionarios
SELECT 
    id, nome, 1000.00, CURRENT_DATE(), sexo, NULL
FROM
    tb_pessoas;
