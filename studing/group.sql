DELETE FROM tb_pessoas 
WHERE
    idpessoa LIKE '4';

SELECT 
    *
FROM
    tb_pessoas;

CREATE TABLE tb_pedidos (
    idpedido INT AUTO_INCREMENT NOT NULL,
    idpessoa INT NOT NULL,
    dtpedido DATETIME NOT NULL,
    vlpedido DEC(10 , 2 ),
    CONSTRAINT pk_pedidos PRIMARY KEY (idpedido),
    CONSTRAINT pk_pedidos_pessoas FOREIGN KEY (idpessoa)
        REFERENCES tb_pessoas (idpessoa)
);

insert into tb_pedidos values (null, 1, current_date(), 2200.00 );
insert into tb_pedidos values (null, 1, current_date(), 5000.00 );
insert into tb_pedidos values (null, 1, current_date(), 1000.00 );
insert into tb_pedidos values (null, 1, current_date(), 7000.00 );
insert into tb_pedidos values (null, 1, current_date(), 2000 );

insert into tb_pedidos values (null, 2, current_date(), 6500 );
insert into tb_pedidos values (null, 2, current_date(), 1999.90 );
insert into tb_pedidos values (null, 2, current_date(), 8000 );

insert into tb_pedidos values (null, 3, current_date(), 60000 );

SELECT 
    b.desnome,
    SUM(a.vlpedido) AS total,
    CONVERT( AVG(a.vlpedido) , DEC (10 , 2 )) AS media,
    CONVERT( MIN(a.vlpedido) , DEC (10 , 2 )) AS menor,
    CONVERT( MAX(a.vlpedido) , DEC (10 , 2 )) AS maior,
    COUNT(*) AS 'Total de pedidos'
FROM
    tb_pedidos a
        INNER JOIN
    tb_pessoas b USING (idpessoa)
GROUP BY b.idpessoa
ORDER BY SUM(a.vlpedido);

-- media, minimo, maximo e total dos pedidos 
-- agrupando
-- ordenando


