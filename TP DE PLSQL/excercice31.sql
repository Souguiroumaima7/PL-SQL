-- creez un declencheur qui permet d' affichier 'ok' avant la mise � jour de chaque ligne dans la table employ�e , lorsqu'on va changer le salaire 

set serveroutput on ;
declare 
create or replace trigger trigger1 after update on employ�e for each row 
begin 
dbms_output.put_line('afficher la table') ;
end ;
begin
update employee set salary = salary + 200 ;
dbms_output.put_line('ok') ;
end ;
