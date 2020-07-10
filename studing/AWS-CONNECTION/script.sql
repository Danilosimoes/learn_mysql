
CREATE TABLE PERSON (
    ID INT AUTO_INCREMENT NOT NULL,
    NAME VARCHAR(50),
    AGE INT,
    SEX varchar(11),
    CONSTRAINT PK_PERSON PRIMARY KEY (ID)
);

select * from PERSON;


insert into PERSON (ID, NAME, AGE, SEX) values (null, 'Danilo', '26', 'M');


insert into PERSON (ID, NAME, AGE, SEX) values (null, 'Alemão', '42', 'M');


update PERSON set AGE = AGE + 5 where ID = 2;
