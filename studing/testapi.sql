use people;

select * from person;

insert into person (name, age) values ('Edna', 72);

update person set name = 'Edilaine' where id = 4;
-- update person set name = ? where id = ?;