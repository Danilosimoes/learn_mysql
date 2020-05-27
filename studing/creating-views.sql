CREATE VIEW v_totaldospedidos AS
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
    
    select * from v_totaldospedidos where total > 17000;
    
    -- criando views, ela serve pra segurança ...