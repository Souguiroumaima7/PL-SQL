set serveroutput on ;
declare 
x number ;
ch_ varchar2 ;
function renvoie_(sal in number) return varchar2
begin
if ( sal > 2000 ) then 
return 'bon salaire'
else 
return 'salaire faible' 
end if ;
end renvoie_ ; 
begin 
x := 1500 ;
ch_:= renvoie_(x);
dbms_output.put_line(ch_);
end ;