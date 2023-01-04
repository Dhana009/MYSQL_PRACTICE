##create database
create database IF NOT EXISTS working_mans;
use working_mans;

##create table
create table salary(
id integer not null,
firstname varchar(10) not null,
lastname varchar(10) not null,
salary integer not null,
primary key(id)
);
desc salary;

##create table
create table salary1(
id integer not null,
firstname varchar(10) not null,
lastname varchar(10) not null,
salary integer not null,
constraint pk_person primary key(id,lastname)
);
desc salary1;

##create table
create table if not exists salary2(
id integer not null,
firstname varchar(10) not null,
lastname varchar(10) not null,
salary integer not null
);
desc salary2;

##alter table and add primary key 
alter table salary2 add primary key(id);

##alter table and add constarints 
alter table salary2 add constraint pk_person primary key(id,salary);
desc salary2;

##drop table
drop table salary2;

##drop primary key by constraints
alter table salary2 drop primary key;



-- foreign key
##create table
create table if not exists salary3(
id integer not null,
firstname varchar(10) not null,
lastname varchar(10) not null,
salary integer not null,
primary key(id)
);
desc salary3;


##create table
create table if not exists salary4(
id integer not null,
department_id varchar(10) not null,
department_name varchar(10) not null,
primary key(department_id),
constraint fk_department foreign key(id) references salary3(id)
);
desc salary4;

##drop table
drop table salary4;

##create table
create table if not exists salary5(
id integer not null,
department_id varchar(10) not null,
department_name varchar(10) not null,
primary key(department_id)
);
desc salary5;

##alter table and add foreign key
alter table salary5 add foreign key(id) references salary4(id);

##check constraints
create table if not exists salary6(
id integer not null,
firstname varchar(10) not null,
lastname varchar(10) not null,
age int,
salary integer not null,
primary key(id),
check(salary<50000)
);
desc salary6;

##insert values
insert into salary6 values(1,'dj','kumar',12,6000);
select * from salary6;

##default constraint
drop table salary6;
create table if not exists salary7(
id integer not null,
firstname varchar(10) not null,
lastname varchar(10) not null,
age int default 10
);
desc salary7;

