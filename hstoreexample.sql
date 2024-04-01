--hstore stored key-value pair. Key and values are string only
-- step1 -- enable hstore extension
create extension hstore;


create table books
 (
   bookid serial primary key,
   bookname text,
   descr hstore
 
 )
 
 -- insert hstore data  key => value
 
 insert into books (bookname,descr) values ('head first java',
										   '
											"pageno" =>"500",
											"language" =>"english",
											 "version"=>"12"
											
											'
										   
select * from books;
select descr-> 'language' as booklanguage from books;		
											
select bookname,descr-> 'pageno' as pageno from books where descr->'version' = '12';
											
 