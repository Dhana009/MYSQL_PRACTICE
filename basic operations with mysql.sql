##basic operations with mysql
##creating new database
create database if not exists flowers;

##drop databases
drop database flowers;

##use databases for further;
use flowers;

##create new table
create table smell(Serial_No int, heavy_smell varchar(10) not null,
low_smell varchar(10) not null, no_smell varchar(10) not null);

##drop table
drop table smell;

##show your table
select * from smell;

##insert data into tables
insert into smell(Serial_No,heavy_smell,low_smell,no_smell) 
values (1,'jasmine','rose','nothing'),(2,'one','rose','nothing');