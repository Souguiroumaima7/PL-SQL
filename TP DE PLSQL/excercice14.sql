--ecricre une procedure qui prend en parametre un identifiant d'employ�e et un nombre , puis mettre � jour le salaire de l'employ� donn�e avec le nombre donn�e 
--afficher le salaire avant et apr�s le maj 
set serveroutput on ;
declare

procedure modify ( id_emp in employees.employee_id %type , nbre in  number ) IS 
iddd employees.employee_id%type ;
salairepp number ;
begin 
SELECT employee_id into iddd from employees  where employee_id = id_emp;
dbms_output.put_line('id : ' || iddd) ;
select salary into salairepp from employees where employee_id = id_emp ;
dbms_output.put_line('salairy : ' || salairepp) ;
update employees set salary= salary + nbre where employee_id = id_emp ;
select salary into salairepp from employees where employee_id = id_emp ;
dbms_output.put_line('salary updated : ' || salairepp) ;
end ;
begin 
modify(198,400);
end ;

select * from employees 

