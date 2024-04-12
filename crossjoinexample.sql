create table fruits
  (
    fruitid int primary key,
	fruitname varchar not null
  
  );
  
 create table mixes
   (
     mixid int primary key,
	 mixitem varchar not null
   
   );
   
 insert into fruits values (1,'Mango'),(2,'Grapes'),(3,'Banana'),(4,'Watermelon') returning *;
 
 insert into mixes values (1,'Milk'),(2,'Water'),(3,'Sugar'),(4,'Frozen') returning *;
 
 select * from fruits cross join mixes;
 
 select fruits.fruitid,fruits.fruitname,mixes.mixitem from fruits cross join mixes 
 where fruitname='Mango' and mixitem='Milk';
 --syntax 2 for cross join  select columname from table1,table2
 select * from mixes,fruits;
 
 --syntax3 select column from table1 inner joins table2 on true
 select * from fruits inner join mixes on true;