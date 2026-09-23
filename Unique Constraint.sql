create table uniquekey (
id int primary key,
Fname varchar(200) unique
);
insert into uniquekey (id,Fname) 
values 
(1,'Nithin'),
(2,'Teju');
select * from uniquekey;
