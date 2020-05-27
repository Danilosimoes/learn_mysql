delimiter $$

create procedure sp_pessoa_save (
pdesnome varchar(256)
)
begin
insert into tb_pessoas values (null, pdesnome, null);

select * from tb_pessoas where idpessoa = last_insert_id();

end$$

delimiter ;

call sp_pessoa_save('Simões');


