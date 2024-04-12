create table batches
  (
    batch_id serial,
	batch_name varchar(255)
  
  );
  
  alter table batches add primary key(batch_id);
  
  create table trainers
    (
	  trainer_id serial primary key,
	  trainer_name text not null,
	  batch_id int not null,
	  constraint fk_batch foreign key(batch_id) references batches
	
	);
	
insert into batches(batch_name) values ('PostgreSQL-Batch1'), ('PostgreSQL-Batch2'), 
('PostgreSQL-Batch3'), ('PostgreSQL-Batch4');

select * from batches;

insert into trainers(trainer_name,batch_id) values
 ('Swati',1) , ('Aayush',4);
 
 select * from trainers;
 
 -- select table1.col1,table1.col2,table2.col1 from table1 inner join table2 on table1.column=table2.column2
 select   batches.batch_id,batches.batch_name,trainers.trainer_name  from batches
 inner join trainers on batches.batch_id=trainers.batch_id;
 
 