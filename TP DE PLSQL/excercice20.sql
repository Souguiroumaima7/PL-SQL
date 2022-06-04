set serveroutput on ;
Declare 
v1  personne.id%type;
v2  personne.nom%type;
v3  personne.age%type ;
cursor c1 is select id , nom , age from personne ;
begin 
open c1 ; 
loop 
fetch c1 into v1,v2,v3 ; 
dbms_output.put_line(v1 ||'' ||v2|| '' ||v3) ;
Exist when c1%notfound ; 
end loop ; 
close c1 ; 
end ; 


