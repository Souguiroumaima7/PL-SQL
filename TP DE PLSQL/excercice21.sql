-- creez un bloc pl/sql qui permet d' afficher les noms et les prenoms des employées ayant un salaire superieur à 1000 en utulisant un curseur explicite nommée cur1 
--ajouter à ce codeune exception en cas ou la table est vide en fesant l' applel à cet exception nommée exc1
set serveroutput on ;
Declare 
 Exc1 EXCEPTION;
V1  EMPLOYEES.FIRST_NAME%TYPE;
V2  EMPLOYEES.LAST_NAME%TYPE;
co number ;
CURSOR Cur1 IS Select FIRST_NAME ,LAST_NAME from EMPLOYEES WHERE SALARY>1000;
begin
open Cur1 ;
FETCH Cur1 INTO V1 , V2 ; 

while (Cur1%FOUND) loop 
FETCH Cur1 INTO V1 , V2 ; 
dbms_output.put_line(V1 ||'                 ' ||V2) ;
end LOOP;
co := Cur1%ROWCOUNT ;
dbms_output.put_line('les nbre des lignes traitée ');
if(Cur1%NotFound) then 
raise Exc1 ;
end if;
exception
when no_data_found then 
dbms_output.put_line('la requete est terminée ');
when Exc1 then 
dbms_output.put_line('on a aucun une ligne traitée ');
      CLOSE Cur1 ;
end ;