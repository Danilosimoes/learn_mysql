delimiter $$

create function fn_imposto_renda (
pvlsalario decimal(10,2)
)
returns dec (10,2)

begin

	declare vlimposto decimal(10,2)
    
    
    /* 		até 1903,98 não paga imposto
			1903,99 até 2826,65 paga 7,5 deduzir do imposto 142,80
            2826,66 até 3751,05 paga 15% deduzir do imposto 354,80
            3751,06 até 4664,68 paga 22,5% deduzir do imposto 636,13
            acima 4664,68 paga 27,5% deduzir do imposto 869,36
	*/;
    
    set vlimposto = case
		when pvlsalario <= 1903.98 then 0
        when pvlsalario >= 1903.99 and pvlsalario <= 2826.65 then (pvlsalario * .075) - 142.88
        when pvlsalario >= 2826.66 and pvlsalario <= 3751.05 then (pvlsalario * .15) - 354.80
        when pvlsalario >= 3751.06 and pvlsalario <= 4664.68 then (pvlsalario * .225) - 636.13
        when pvlsalario >= 4664.68 then (pvlsalario * .275) - 869.36
        
	end;
    
    return vlimposto;
        
    


end$$

delimiter ;

SELECT 
    *, FN_IMPOSTO_RENDA(a.vlsalario) AS vlimposto
FROM
    tb_funcionarios a
        INNER JOIN
    tb_pessoas b USING (idpessoa);
