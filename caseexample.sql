-- alter table childtablename add constraint contraint_name foreign key(fkcolumnname) references parenttable (parentname)
-- alter table childtablename add constraint contraint_name foreign key(fkcolumnname) 
-- references parenttable (parentname) on delete/ on update action 

--CASE expression is same as if/else statement

/*
   case 
      when condition then result1
	  when condtion2 then result2
      else else result
   end 
*/
select * from employee_info;
select 
   emp_name ,emp_id , employee_salary,
   case when employee_salary >=50000 and employee_salary <60000 then 'Need Increment of 10%'
   when employee_salary >=60000 and employee_salary <80000 then 'Need Increment of 5%'
   when employee_salary >=80000 and employee_salary <100000 then 'Need Increment of 2%' end remarks
from employee_info order by emp_name;
-- sum(case when employee_salary >50000 then 1 else 0 end )
   

