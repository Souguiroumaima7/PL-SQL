-- creez un bloc pl/sql qui permet d' afficher les noms et les prenoms des employ�es ayant un salaire superieur � 1000 en utulisant un curseur explicite nomm�e cur1 
--ajouter � ce codeune exception en cas ou la table est vide en fesant l' applel � cet exception nomm�e exc1
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
dbms_output.put_line('les nbre des lignes trait�e ');
if(Cur1%NotFound) then 
raise Exc1 ;
end if;
exception
when no_data_found then 
dbms_output.put_line('la requete est termin�e ');
when Exc1 then 
dbms_output.put_line('on a aucun une ligne trait�e ');
      CLOSE Cur1 ;
end ;