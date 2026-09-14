create table checkconstraint (
id int primary key,
price int,
quantity int check (quantity > 0)
);
insert into checkconstraint(id,price,quantity)
values
(1,100,2),
(2,200,3);
insert into checkconstraint(id,price,quantity)
values
(3,300,0),
(4,500,-2);
select * from checkconstraint;
