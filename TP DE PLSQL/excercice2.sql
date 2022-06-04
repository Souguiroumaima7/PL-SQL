SET SERVEROUTPUT on 
DECLARE 
aux INTEGER;
a INTEGER ;
b INTEGER ;
BEGIN 
a:=&enter_un_chiffre ;
b:=&enter_un_chiffre ;
DBMS_output.put_line('a = ' || a) ;
DBMS_output.put_line('b= ' || b) ;
DBMS_output.put_line('permute.. ');
aux :=a ;
a:= b ;
b:=aux ;
DBMS_output.put_line('a =' || a);
DBMS_output.put_line('b =' || b);
end ; 
