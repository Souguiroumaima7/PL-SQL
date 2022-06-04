--affichier les id et les noms des regions en utulisant un curseur explicite qui retourne les regions dans leur noms commence par 'A' .
--stocker ces informations de chaque ligne dans un type structurée basé sur notre curseur .

set serveroutput on;
Declare 
Cursor C2 is select  REGION_ID,REGION_NAME from REGIONS WHERE REGION_Name LIKE 'A%';
V1 C2%ROWTYPE ;
begin 
open C2 ;
loop 
Fetch C2 into V1 ;
dbms_output.put_line(V1.REGION_ID || ' ' || V1.REGION_NAME);
Exit WHEN C2%NOTFOUND ;
end loop ;
close C2 ;
end ;
