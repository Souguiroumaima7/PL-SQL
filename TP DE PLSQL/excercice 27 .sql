--on considere la table suivante  : pilote (Matricule , Nom , Ville ,AGE ,Salaire )
--ecrire un progrmme pl/sql qui calcule la moyenne ses salaire des pilotes dont l' age est entre 30 et 40 ans 

set serveroutput on ;
declare 
cursor C1 is select  Salaire from pilote where age between 30 and 40 ;
v1 C1%ROWTYPE ;
sal salaire%type ;
somme number :=0 ;
moy number  ;
begin 
open C1 ;
Fetch C1 into V1 ;
 loop 
fetch C1 into V1 ;
exit when (C1%Notfound);
somme := somme + S ;
end loop ;
Moy : = somme / (C1%Rowcount) ;
close C1 ;
dbms_output.put_line () ;
end ;
