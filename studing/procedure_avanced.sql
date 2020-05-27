DELIMITER $$

create procedure sp_funcionario_save (
pdesnome varchar(256),
pvlsalario decimal(10,2),
pdtadmissao datetime
)
begin
	declare vidpessoa int;
    
    start transaction;
    
    if not exists(select idpessoa from tb_pessoas where desnome = pdesnome) then
    
		insert into tb_pessoas values(null, pdesnome, null);
    
		set vidpessoa = last_insert_id();
    
    else
    
		select 'Usuário já cadastrado' as Resultado;
        rollback;
        
	end if;
    
     if not exists(select idpessoa from tb_funcionarios where idpessoa = vidpessoa) then
    
		insert into tb_funcionarios values(null, vidpessoa, pvlsalario, pdtadmissao);
    
    
    else
    
		select 'Usuário já cadastrado' as Resultado;
        rollback;
        
	end if;
    
    commit;
    
SELECT 'Dados cadastrado com sucesso' AS resultado;
    
    
    
    

end$$

delimiter ;

call sp_funcionario_save('Danilo', 12000, current_date());
call sp_funcionario_save('Edna', 12000, current_date());

SELECT 
    *
FROM
    tb_pessoas;

