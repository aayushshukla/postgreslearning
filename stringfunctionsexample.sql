--ascii('character') returns ascii code of a character
select ASCII('D') D,ASCII('L') L;

--chr() convert ascii code to  a character
select chr(99),chr(65);

select * from books;

--initcap   aayush shukla  --> Aayush Shukla -- it convert words in a string of title case

select initcap(bookname) Bookname from books;

--upper()
select upper(bookname) Bookname from books;

--concat(str1,str2,str3)
select concat('aayush','shukla',10) username;
--concat_ws() concatenate strings on basis of specific character or seprator 
select concat_ws('@','aayush','gmail.com') email;
select concat_ws('!','Hello','class','good','evening');

--repeat(string, noof time to repeat)
select repeat ('hi',3) repeateddata;

--trim('leading|trailing|both'trimcharacter) from string 

select trim(Both '*' from '***www.google.com*****') as webname;
select trim(leading '*' from '***www.google.com*****') as webname;
select trim(trailing '*' from '***www.google.com*****') as webname;

--ltrim(string ,character)
select ltrim('***www.infosys.com***','*') as ltrimstring;
--rtrim(string,character)
select rtrim('***www.infosys.com***','*') as rtrimstring;
--substring(string,startposition,noofcharacters)
-- start position will be 1 
select substring(bookname,0,5) as subbookname from books;
-- by default start will be 1 end will length of string 
select substring ('postgreSQL',8);

--position(item in stringtosearch ) it search given substring in string and return the location of given substring
-- if substring is not found it return 0 and if string is null it reutrns null
select position('o' in 'good evening') as Ofound;

--reverse()
select reverse('hello') as reversedstring;

--replace(string,oldvalue,newvalue)
select replace('good morning','morning','evening') as replacedstring;
select replace('good morning','o','!') as replacedstring;

--split_part(string,delimiter,postion) 'aayush@gmail.com' --> ['aayush','gmail.com']
select split_part('aayush@gmail.com','@',2) as datastring;
select split_part('www.google.com','.',1) as splitstring;
select split_part('www.google.com','.',2) as splitstring;
select split_part('www.google.com','.',3) as splitstring;

--MD5()
select MD5(bookname) as encryptedbookname from books;

--TO_CHAR(expression ,format) converts timestamp, interval, integer , decimal , numeric to string 
select to_char( TIMESTAMP '2024-04-04 20:27:30','HH24:MI:SS');
select to_char( TIMESTAMP '2024-04-04 20:27:30','HH12:MI:SS');
select to_char( TIMESTAMP '2024-04-04 20:27:30','YY-MM-DY');

--to_number(express,format) convert string to number
-- locale
--9 digit placeholder , g: group separator d decimal s  for sign
select to_number('$10,44.56','L99g99.99');

--LPAD(string,lengtht,fill)
select LPAD('aayush',10,'*');
--RPAD(string, length,valuetofill)
select RPAD('aayush',10,'0');

select RPAD(123::TEXT,10,'*');