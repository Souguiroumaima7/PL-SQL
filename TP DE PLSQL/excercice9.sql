set serveroutput on ;
Declare 
Type tabb is Varray(7) of number ;
T1 tabb;
i integer ;
begin 
T1 := tabb(1,23,10,5,14,32,101);
for i in 1..7 loop
dbms_output.put_line( 'T1('||i|| '= ' || T1(i)||')') ;
end loop;
For i in 1..7  loop
if( T1(i)>5 and T1(i)<15) then
T1(i) := T1(i)*1.5 ;
end if;
if (T1(i)>15 and  T1(i)<30) then 
T1(i) := T1(i)*2 ; 
end if;
if (T1(i)>30) then
T1(i) := T1(i)*3 ;
end if;
end loop;
dbms_output.put_line( 'augmentation...') ;
for i in 1..7 loop
dbms_output.put_line( 'T1('||i|| '= ' || T1(i)||')') ;
end loop;
end ;