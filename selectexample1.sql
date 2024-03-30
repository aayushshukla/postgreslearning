-- select * from tablename to fetchall data
select * from social_data;
-- select colname1,colname2..coln from tablename where condition
select full_name from social_data;
-- select colname as aliasname,col2 as aliasname from tablename
select username as uname, full_name as FullUserName from social_data;
-- select distinct  col1,col2 from tablename
select distinct full_name from social_data;
-- sorting data in aesc or desc  of a column order by clause 
-- by default data will be sorted in ascending order
-- select * from table order by columnname  aesc | desc
--names are sorted in ascending order
select full_name from social_data order by full_name;

--sort data in descending order on basis fullname 

select * from social_data order by full_name desc;

select * from batches_info;

select * from batches_info order by batchname ;
-- select * from table order by columnname aesc | desc nulls first|last 
select * from batches_info order by batchname desc nulls last  ;

select * from batches_info order by batchname nulls first ;

select * from social_data limit 5;
select * from social_data  order by full_name limit 10;
-- select * from tablename limit row_count offset rows_to_skip
select * from social_data order by full_name limit 10 offset 3;
-- select * from tablename where columname between highrange and lowrange
select * from social_data  where full_name between 'Andra Brixey' and 'Arny Lurcock'  order by full_name; 
-- select * from tablename where columname not between highrange and lowrange
select * from social_data  where full_name not between 'Andra Brixey' and 'Arny Lurcock'  order by full_name;

