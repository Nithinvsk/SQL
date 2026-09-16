create table defaultconstraint (
id int primary key,
Ddate date default '2025-09-21'
);
insert into defaultconstraint (id, Ddate)
values 
(1,'2022-03-17'),
(2,'2022-02-08');
insert into defaultconstraint(id)
values
(4),
(5);
select * from defaultconstraint;