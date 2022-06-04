set serveroutput on 
Declare 
Type em_array is  varray(10) of varchar(20) ;
v_array em_array ;
nb BOOLEAN ;
n integer ;
Begin 
v_array := em_array('janvier','fevrier','mars','April','mai','june','juillet','Aouat','septembre','octobre');
nb := v_array.exists(5);
if nb then
DBMS_output.put_line('true');
end if;
Dbms_output.put_line('le nombre des elements  =' || v_array.count) ;
Dbms_output.put_line('le 1ere index  =' || v_array.first) ;
Dbms_output.put_line('le dernier index  =' || v_array.last) ;
--v_array.TRIM(3);
--v_array.delete;
Dbms_output.put_line('le nombre des elements  =' || v_array.count) ;
for i in 1..10 loop 
dbms_output.put_line('index de '||i|| ' est ' || v_array(i));
end loop ;
end ;
