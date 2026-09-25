create database movies;
use movies;
create table movies (
movie_id int AUTO_INCREMENT primary key,
title varchar(200) not null,
director varchar(100) not null,
genre varchar(200),
ticket_price int,
release_year date
);
insert into movies (movie_id,title,director,genre,ticket_price,release_year)
values
(1,'Jersey','Gautham Kattaneni','Drama',150,'2019-04-19'),
(2,'Nenu Shailaja','Kishore Tirumala','Love/Action',100,'2016-01-1'),
(3,'RRR','Rajamouli','Action',250,'2025-03-25'),
(4,'OG','Sujeeth','Action/Gangstar',300,'2025-09-25'),
(5,'Arjun Reddy','Sandeep Reddy Vanga','Love/Romance',150,'2017-08-25');
select * from movies;
select * from movies where release_year >= '2019-01-01';

