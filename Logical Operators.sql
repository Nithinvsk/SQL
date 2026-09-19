create table cinema (
cinema_id int primary key,
title varchar(200),
director varchar(100),
genre varchar(200),
budget bigint,
collection bigint,
release_year date
);
insert into cinema (cinema_id,title,director,genre,budget,collection,release_year)
values
(1,'Jersey','Gautham Kattaneni','Drama',15000000,20000000,'2019-04-19'),
(2,'Nenu Shailaja','Kishore Tirumala','Love/Action',10000000,30000000,'2016-01-1'),
(3,'RRR','Rajamouli','Action',250000000,550000000,'2025-03-25'),
(4,'OG','Sujeeth','Action/Gangstar',300000000,700000000,'2025-09-25'),
(5,'Arjun Reddy','Sandeep Reddy Vanga','Love/Romance',17000000,300000000,'2017-08-25');
select * from cinema;
select * from cinema where genre = 'Drama' and year(release_year) = 2019;
select * from cinema where genre = 'Drama' or year(release_year) = 2025;
select * from cinema where not genre = 'Drama';
select * from cinema where genre in ('Drama','Action');
select * from cinema where year(release_year) between 2016 and 2020;
select * from cinema where genre like 'Acti%';
select * from cinema where genre like 'Dr__a';
show databases;