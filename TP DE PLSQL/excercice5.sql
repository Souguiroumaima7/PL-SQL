set serveroutput on ;
DECLARE 
r number :=17664 ; 
Begin 
while (r>171) loop
r := r -171 ; 
end loop ;
DBMS_output.put_line('le reste de la division est' || r) ;
end ;

set serveroutput on ;
DECLARE 
c  number ; 
res number ; 
Begin 
c := trunc(17664/171) ;
res := 17664 -c ;
DBMS_output.put_line('le reste de la division est' || r) ;
end ;

DECLARE
x number;
begin
x:=trunc(9/2);
DBMS_output.put_line('le reste de la division est' || x) ;
end;
