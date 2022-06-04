set serveroutput on
DECLARE
a number;
i number;
f number;
BEGIN
a:=&Donner_a;
f:=1;
i:=a;
WHILE i>0 LOOP
f:=f*i;
i:=i-1;
END LOOP;
dbms_output.put_line('a='||a);
dbms_output.put_line('a!='||f);
END;