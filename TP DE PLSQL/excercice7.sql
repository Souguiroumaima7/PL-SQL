set SERVEROUTPUT on ; 
declare 
v vol%ROWTYPE ;
begin 
v.numvol := AF110 ;
v.ville_dep := 'paris ;
v.h_dep := to_date('28/03/2022 21:40', 'dd/mm/yyyy hh24:mi') ;
v.ville_arr := 'duphine';
v.h_arr : = to_date('26/04/2022 23:10' , 'dd/mm/yyyy hh24:mi') ;
insert into vol values v;
end ;

