--ecrire une procedure qui insere l' employee donnée dans une table de sauvgarde nommé alert_employee 
set serveroutput on ;
declare 
procedure alert_ (idd employees.employee_id%type , firstname employees.first_name%type , lastname employees.last_name%type) is
begin 
insert into alert_employee values (emp.employee_id , emp.first_name ,emp.last_name , emp.email , emp.phone_number , emp.hire_date , emp.job_id , emp.salary ,emp.commission_pct , emp.manager_id , 
emp.department_id );
end;
begin 
alert_(180,'wintson','taylor','wtaylor','650.507.9876','24-jan-08', 'SA_REP',6200 ,'',149,80);
select * from alert_employee;
end ;
--select * 
--from employees 
