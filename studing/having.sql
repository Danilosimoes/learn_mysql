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
having sum(vlpedido) > 17000
ORDER BY SUM(a.vlpedido);

-- having é só usado com o group by ....			

