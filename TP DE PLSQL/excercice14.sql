--ecricre une procedure qui prend en parametre un identifiant d'employée et un nombre , puis mettre à jour le salaire de l'employé donnée avec le nombre donnée 
--afficher le salaire avant et aprés le maj 
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

