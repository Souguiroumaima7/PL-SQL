set serveroutput on ;
DECLARE 
Type emp_array is varray(5) of varchar2(50) ;
Type salary_array is varray(5) of Integer ;
v_Names   emp_array ;
v_salaries  salary_array ;
Nb  integer ; 
BEGIN 
v_Names :=emp_array('King','jones','ford','Smith,Blanke');
V_salaries :=salary_array(5000,2975,3000,800,2850);
for i in 1..nb loop 
DBMS_output.put_line(' Employee =');
DBMS_output.put_line('Salaries =') ;
end loop ;
END ; 
