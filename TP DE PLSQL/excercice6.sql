set serveroutput on ;
Declare 
type point is RECORD (
absc number ,o number ) ;
p  point ;

Begin 
p.absc := 20 ;
p.o := 40 ;
dbms_output.put_line('les champ de ' || p.absc || p.o);
end ; 
 
set serveroutput on ;
declare 
type voiture is RECORD( mat number , km number) ;
type personne is RECORD (cin number , prenom varchar(10) , nom varchar(10) , age  number );
r voiture ;
p personne ;
begin 
r.mat :=200 ;
r.km := 20 ;
p.cin := 145 ;
p.prenom := 'ali' ;
p.nom := 'ghezel' ;
p.age := 50 ;
dbms_output.put_line(' description  personne : ' );
dbms_output.put_line( 'cin: ' || p.cin ||' ' || 'prénom :'|| p.prenom || 'nom:' || p.nom || 'age:'|| p.age  );
dbms_output.put_line('description voiture : ' );
dbms_output.put_line( 'matricule:' || r.mat || 'kilométrage :' || r.km  );
end ; 
