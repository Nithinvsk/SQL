create database Book;
use Book;
create table paper (
paper_id int primary key,
title varchar(25),
author varchar(25),
gerne varchar(25),
price int,
published_year date
);
insert into paper(paper_id,title,author,gerne,price,published_year)
values
(8,'maths','reddy','maths',250,'2021-07-26'),
(26,'eng','rathod','eng',300,'2022-07-26');
select title,published_year from paper;
select * from paper;
select paper_id from paper;
select * from paper where gerne = 'maths';
select * from paper where price >= 300;
select * from paper where price = 250 and gerne = 'maths';
select * from paper where published_year = '2021-07-26' or gerne = 'eng';
select * from paper where price between 250 and 280 ;
select * from paper where not price = 250;
select * from paper where gerne in ('maths','eng');
select * from paper where author like 'red%';
select * from paper where author like 'ra_h_d';



use movies;
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
insert into cinema(cinema_id,title,director,genre,budget,collection,release_year) 
values
(6,'Salaar','Neel','Action',30000000,900000000,'2023-12-22');
select * from cinema;


select count(*) as total_count from cinema;
select max(collection) from cinema;
select min(collection) from cinema;
select sum(collection) as total_sum from cinema;
select avg(collection) from cinema;


select * from cinema where title = 'Nenu Shailaja';
select * from cinema where title = 'Nenu Shailaja'  and release_year = '2016-01-01';
select * from cinema where title = 'Nenu Shailaja'  or release_year = '2025-09-25';
select * from cinema where not genre = 'Action';
select * from cinema where genre in ('Drama','Love/Action');
select * from cinema where release_year between '2016-01-01' and '2024-01-01';
select * from cinema where genre like 'Act%';


select * from cinema order by title asc;
select * from cinema order by title desc;


select * from cinema limit 2;


select genre, sum(Collection) from cinema group by genre;
select genre, count(title) from cinema group by genre;
select release_year, count(genre) from cinema group by release_year;
select genre, max(collection) from cinema group by genre;
select genre, min(collection) from cinema group by genre;
select genre, avg(collection) from cinema group by genre;


select genre, sum(collection) 
from cinema
group by genre
having sum(collection) >= 900000000;

select genre, max(collection)
from cinema
group by genre
having max(collection) >= 30000000;


update cinema
set genre = 'Action'
where cinema_id = 4;

update cinema
set genre = 'Love'
where cinema_id = 2;

update cinema
set genre = 'Love'
where cinema_id = 5;

delete from cinema
where cinema_id = 3;

delete from cinema
where title = 'salaar';


alter table cinema
add hero varchar(200);

alter table cinema
modify hero varchar(200);

alter table cinema
drop column hero;