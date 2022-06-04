set serveroutput on ;
Declare 
type personne is Record ( id_ number , nom varchar(30) , age number , department varchar(30)) ;
P1 personne ;
PROCEDURE afficher (p personne) IS 
begin 
dbms_output.put_line('id :' || p.id_ );
dbms_output.put_line('nom :' || p.nom );
dbms_output.put_line('age :' || p.age );
dbms_output.put_line('department :' || p.department );
end ;
begin
p1.id_ := 1 ;
p1.nom := 'ismail' ;
p1.age := 27 ;
p1.department := 'informatique' ;
afficher( p1) ;
end ;