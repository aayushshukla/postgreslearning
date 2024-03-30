--smallserial   2bytes            1 to 32767
--serial        4bytes            1 to 
--bigserial     8bytes            1 to 2(n+1) n of bits  2(32+1)
--in unique column we add null values
create table batches_info (batchid serial primary key ,batchname text unique ,batch_tech text not null);

insert into batches_info(batchname,batch_tech) values ('pda_postgres_batch_5','postgres') returning *;

select * from batches_info;

insert into batches_info(batch_tech) values ('postgres') returning *;
-- insert into tablename (column1,col2..coln) values (v1,v2,v3..vn) 
-- on conflict(conflict_columnname)  DO NOTHING | DO UPDATE SET col1=v1,col2=v2..con=valn
--excluded allow us to access new values
insert into batches_info(batchname,batch_tech) values ('pda_postgres_batch_7','postgres')
on conflict(batchname) 
do update set batchname =excluded.batchname, 
batch_tech=excluded.batch_tech;

insert into batches_info(batchname,batch_tech) values ('pda_postgres_batch_5','postgres')
on conflict(batchname) 
do nothing;
-- removing checking constraint 
-- alter table tablename drop constraint constrainname
alter table batches_info drop constraint batch_tech_check;
-- adding check constraint 
-- alter table tablename add constrain constrainname check(column condition)
-- if constraint name is not given than postgres will assign name from itside
-- adding constraint of check technology should be either postgres or java 
alter table batches_info add constraint batch_tech_check check (batch_tech='postgres'or batch_tech='java');


insert into batches_info(batchname,batch_tech) values ('pda_postgres_batch_8','c++');
-- constrain name = tablename_columnname_constraint system generated
create table vtable (vid serial primary key , vtvalue numeric check (vtvalue>=1000) );

insert into vtable(vtvalue) values (11);

--ADD CHECK CONSTRAINT IN BATCHNAME  BATCHNAME MUST HAVE ATLEAST 10 CHARACTERS  LENGTH()
alter table batches_info drop constraint batchname_length_check;
alter table batches_info
add constraint batchname_length_check check (length(trim(batchname)) >= 10);
insert into batches_info(batchname,batch_tech) values ('  batch  ','postgres');

select * from batches_info;
delete from batches_info where batchid=15;