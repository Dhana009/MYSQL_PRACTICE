##create databases
create database if not exists student;
show databases;
use student;

##show tables
show tables;

##create table 
create table details(
id int not null,
first_name varchar(10) not null,
last_name varchar(10) not null,
age int );

##select the table
select * from details;
desc details;

##alter table and change the type of the data type and its values
alter table details modify age int not null;
desc details;

##create table
create table person(
id int not null,
first_name varchar(10) not null,
last_name varchar(10) not null,
age int not null,
unique(id));

##insert values into table
insert into person(id,first_name,last_name,age) values
(1,'dj','babu',23),(2,'djj','bab',34);

##show table
select * from person;

##alter table and add unique to specific column
alter table person add unique(first_name);
desc person;


##add constraints with specific names and drop them easily
alter table person add constraint first_names unique(first_name,age);
alter table person add constraint last_names unique(last_name,age);
desc person;

##drop constraints
alter table person drop index first_names;
alter table person drop index last_names;
desc person;

##create table and add constraints
create table if not exists person1(
id int NOT NULL,
firstname varchar(23) not null,
lastname varchar(34) not null,
age int,
CONSTRAINT PK_PERSON primary key(id,lastname)
);

##show tables
select * from person1;
desc person1;

##drop constraint
alter table person1 drop primary key;
desc person1;

##add primary key
alter table person1 add primary key(id);
desc person1;
