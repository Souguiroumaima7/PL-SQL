set serveroutput on ;
declare 
create or replace function calculer ( n in  ) return number is 
res number ;
begin 
 select count(*) into res from travail where numprojet = n ;
 return res ;
end ; 
begin 
dbms_output.put_line(employ�(200) ) ;
end ; 
