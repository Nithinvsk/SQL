create table notnull (
id int primary key,
Fname varchar(100) not null,
salary decimal(10,2)
);
insert into notnull(id,Fname)
values
(1,'Nithin'),
(2,'Teju');
insert into notnull(id,Fname,salary)
values
(3,'Nithin',100000),
(4,'Teju',20000);
select * from notnull;