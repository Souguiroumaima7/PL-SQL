set serveroutput ON
DECLARE 
N1 number :=4 ;
N2 number := 8 ;
res number ;
BEGIN
dbms_output.put_line('N1 =' || N1);
dbms_output.put_line('N2 =' || N2);
res := N1+N2;
dbms_output.put_line('sum ='|| res);
END;


DECLARE 
v_id          EMPLOYEES.EMPLOYEE_ID%TYPE := 198;
v_First_Name  EMPLOYEES.FIRST_NAME%TYPE ;
BEGIN
Select EMPLOYEES.FIRST_NAME  INTO v_First_name FROM  EMPLOYEES where EMPLOYEE_ID  = V_id ;
DBMS_OUTPUT.PUT_LINE ('v_First_Name =' || v_First_name );
EXCEPTION 
WHEN no_data_found Then 
dbms_output.put_line('no data with EMPLOYEE_ID ='||v_id);
End ;

select * 
from EMPLOYEES
