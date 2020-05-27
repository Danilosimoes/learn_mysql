create database PEOPLE;

USE PEOPLE;

CREATE TABLE PEOPLE(
	ID int auto_increment not null,
    NAME varchar (50),
    AGE INT,
    constraint PK_PEOPLE primary key (ID)

);


select * from people;

CREATE USER 'danilo'@'localhost' IDENTIFIED BY 'danilo';
GRANT ALL PRIVILEGES ON *.* TO 'danilo'@'localhost';

select * from mysql.user;
