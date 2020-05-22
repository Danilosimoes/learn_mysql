drop table tb_pessoas;

CREATE TABLE tb_pessoas (
    idpessoa INT AUTO_INCREMENT NOT NULL,
    desnome VARCHAR(256) NOT NULL,
    dtcadastro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP (),
    CONSTRAINT pk_pessoas PRIMARY KEY (idpessoa)
)  ENGINE=INNODB;

CREATE TABLE tb_funcionarios (
    idfuncionario INT AUTO_INCREMENT NOT NULL,
    idpessoa INT NOT NULL,
    vlsalario DECIMAL(10 , 2 ) NOT NULL DEFAULT 1000.00,
    dtadmissao DATE NOT NULL, 
    CONSTRAINT pk_funcionarios PRIMARY KEY (idfuncionario),
    CONSTRAINT pk_funcionarios_pessoas FOREIGN KEY (idpessoa)
        REFERENCES tb_pessoas (idpessoa)
);

insert into tb_pessoas values(null, 'Danilo', null);

SELECT 
    *
FROM
    tb_pessoas;
    

insert into tb_funcionarios values(null, 1, 7500, current_date());


SELECT 
    *
FROM
    tb_funcionarios;
    