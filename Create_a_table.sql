create table friends (
  id Integer,
  name text,
  birthday date
);
insert into friends(id,name,birthday)
values (1,'Ororo Munroe','1940-05-30');
/*select * from friends;*/
insert into friends(id,name,birthday)
values (2,'Sample1','1950-04-20');
insert into friends(id,name,birthday)
values (3,'Sample2','1980-10-10');
update friends set name = 'Storm' where id = 1;
alter table friends add column email text;
update friends set email = 'storm@codecademy.com' where id = 1;
update friends set email = 'aerm@codecademy.com' where id = 2;
update friends set email = 'rm@codecademy.com' where id = 3;
delete from friends where name = 'Storm';
select * from friends;