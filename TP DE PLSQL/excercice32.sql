-- afficher les trigger que vous aver crée ? 
--select trigger_name from user_trigger ; 

-- créez un trigger qui permet d'afficher la valaur ancienne et la nouvelle valeur d' un salaire lorsque on  fait une mise à jour sur les salaires .
 --lorsqu'on fait mise à jour 
 
 set serveroutput on ;
 declare 
 create or replace trigger trigger3  after update of salaire on table 
 for each row 
 begin 
 dbms_output.put_line('la valeur ancienne '||old.salary||' nouvelle valeur ' || new.salary);
 end ;
 begin 
update employée set salary = salary + 100 where id_emp = 1 ;
dbms_output.put_line('') ;
 end ;
