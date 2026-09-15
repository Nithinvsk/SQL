create database books;
use books;
create table books (
book_id int primary key,
title varchar(200),
author varchar(100),
genre varchar(200),
price int,
published_year date
);
insert into books (book_id,title,author,genre,price,published_year)
values
(1,'You Can','Nithin','Insprining',1000,'2024-07-16'),
(2,'Psychology of Money','Ravi','Interseting',300,'2024-07-1'),
(3,'Mind','Shiva Kumar','Motivate',500,'2022-07-20'),
(4,'Love','Teju','Romance',10000,'2022-03-17'),
(5,'Piece','Nithin','Require',900,'2024-07-15');
select * from books;
