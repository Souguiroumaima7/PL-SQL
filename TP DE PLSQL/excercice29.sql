set serveroutput on ;
declare 
create or replace trigger trigger1 after update on employ�e 
begin 
dbms_output.put_line ('afficher les donn�e du table ');
end ;
begin 
update employ�e set salaire  = salaire +100 when ndep = 10 ;
dbms_output.put_line('la table a ete mise � jour');
end ;