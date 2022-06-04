set serveroutput on ;
declare 
create or replace trigger trigger1 after update on employée 
begin 
dbms_output.put_line ('afficher les donnée du table ');
end ;
begin 
update employée set salaire  = salaire +100 when ndep = 10 ;
dbms_output.put_line('la table a ete mise à jour');
end ;