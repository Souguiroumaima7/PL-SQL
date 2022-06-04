set serveroutput on ; 
Declare 
Type t is Varray(50) of integer ;
Tab t;
i integer ;
Begin 
Tab:=t();
Tab.extend(20);
for i in 1..20 loop
Tab(i):= i*i ;
dbms_output.put_line('Tab('||i||') ='|| Tab(i) ) ;
end loop ;
end ; 
