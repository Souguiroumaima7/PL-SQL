-- realiser un bloc pl/sql permettant a l'utulisateur d'introduire un nombre au choix ,
--faire ensuite l' affichage de multiplication de ce nombre 

set serveroutput on ;
declare 
nb number ;
i integer ; 
begin 
nb :=&enterunchiffre ;
for i in 1..10 loop 
dbms_output.put_line(i ||'*'||nb||'='||i*nb);
end loop ;
end ;