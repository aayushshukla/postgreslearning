select * from product1;

create table product1_copy (pid int primary key , pname varchar not null , price int not null);

insert into product1_copy select * from product1 where pid in (select pid from product1);

select * from product1_copy;

update product1 set price = 20 where pid = (select pid from product1_copy where pname='pen' );