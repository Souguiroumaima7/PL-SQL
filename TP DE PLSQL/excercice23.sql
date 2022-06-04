--ecrire un bloc pl/sql  qui permet d' affichier l' id , le nom , et l' adresse d'une personne dont son nom commence par 'A' 
--utiliser un curseur excplicite pour faire ce travail 
--ajouter une eception , en cas aucun ligne est encore disponible , ou un affichier 'terminé  
--nb : les variables ou on va stocké les résultats  dont dest champs d' un type structuré 
set serveroutput on ; 
declare 
Cursor C3 is select  id, nom , adresse from  personne  WHERE nom  LIKE 'A%';
V2 C3%ROWTYPE ;
exc exception ;
begin 
open c3;
Fetch C3 into V2  ;
--fetch avant loop et dans loop
loop 
Fetch C3 into V2  ;
dbms_output.put_line(V2.nom || ' ' || V2.nom );
Exit WHEN C3%NOTFOUND ;
end loop;
exception 
WHEN no_data_found then 
dbms_output.put_line('la requete est terminée ');
raise exc ; -- tu dois mettre raise cette exception dans le code
dbms_output.put_line('on a aucun une ligne traitée ');
CLOSE C3 ;
end ; 
