##create database
create database working_mans;
use working_mans;

##create table with auto increment and primary key
create table salary(
id integer auto_increment,
firstname varchar(10),
lastname varchar(10),
salary integer,
primary key(id)
);

##insert values to table
insert into salary(firstname,lastname,salary)
values
('dj','babu',1000),
('kumar','reddy',2000),
('karthik',null,null),
('karthik','babu',3000);

##show table
show tables;
select * from salary;

##drop table
drop table salary;

##conditions based table
#1.select table column where null and not values are present.
select * from salary where lastname is null;
select * from salary where salary is not null;

##update particular row with using primary key and a particular column
update salary set lastname='ok',firstname='karthik',salary=3000 where id=4;
select * from salary;

##delete specific rows from table
delete from salary where id=1;
select * from salary;

#sql alter table and add a new column in existing table.
alter table salary add dob varchar(25);
select * from salary;

##altering table and changing the datatype of a existing column
alter table salary modify dob date;
desc salary;

##drop specific column in a table
alter table salary drop column dob;
select * from salary;