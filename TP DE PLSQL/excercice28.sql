--soit la relation (id ,nom ,department ,age ,salaire) 
-- ecriverz un bloc pl/sql qui effectue une augmentation de 200 euros du salaire des salaire du employ�e du department 'commerciale' et
--qui utilise le dernier implicite pour affichier le nombre d'employ�e affect�e par ce chargement 

set serveroutput on ;
declare
tot number ;
begin 
update employee set salaire = salaire + 200  where department = commerciale ;
if (sql%found) then
tot := sql%ROWCOUNT ;
dbms_output.put_line('affichier tous les employ�e:' ||tot) ;
end if ;
end ; 

