--UUID  universal unique identifier defined by RFC 4122
-- 128 bit quantity generated by algo 
-- it is sequence of 32  hexadecimal digits  
-- 0-9  10 a 11 b 12 c 13 d 14 e 15 f   

create table subscribe_info (subscribeid uuid default gen_random_uuid() primary key,
							subscribername text not null, mobileno numeric ); 
							
insert into subscribe_info (subscribername,mobileno) values('aayush','12345'),('dylan','56789');

select * from subscribe_info;

--json java script object notation
--xml / json are common ways to transfer data between apis / application
-- language independent
-- paired data key : value , key will be unique 
--  json object   {name : aayush , age:32 , address :  {city :delhi , pincode : 1234}}
-- keys which are string  written ""
-- json array     [ {name:'aayush'},{name:dylan , loc:goa},{}]
-- json object - data type json , text, slower , data manipulation is simple, duplicates key allowed
-- jsonb  data type array, binary , faster, data manipulation is complex, duplicates keys are not allowed

create table menu (
   itemid serial primary key,
    itemname varchar(255) not null,
	description jsonb
)

insert into menu(itemname,description) values ('banana shake','{"size":["s","m","l","xl"],
											   "price":80}');
insert into menu(itemname,description) values ('momos','{"quantity":[4,8],
											   "price":100}');
											   
select itemname,description from menu;

select itemname, description ->'price' price from menu ;

select itemname,description ->'quantity' momoquntity from menu where itemname='momos';
-- extract json object by key as text   columnname ->>keyname newkeycolumname
select itemname, description ->>'price' price from menu ;

