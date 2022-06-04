set serveroutput on ;
Declare 
emp1 EMPLOYEES%ROWTYPE ;
begin 
select * into emp1 from EMPLOYEES where EMPLOYEES.EMPLOYEE_ID =120;
dbms_output.put_line('id :' || emp1.EMPLOYEE_ID ) ;
dbms_output.put_line(' first name :' || emp1.FIRST_NAME ) ;
dbms_output.put_line('last name  :' || emp1.LAST_NAME ) ;
dbms_output.put_line(' email :' || emp1.EMAIL ) ;
end ;


SELECT * 
FROM EMPLOYEES 
