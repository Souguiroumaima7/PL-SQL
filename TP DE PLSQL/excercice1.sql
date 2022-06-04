select *
from EMPLOYEES
set serveroutput on ;
DECLARE 
emtotal integer; 
mang integer;
vide exception;
mangpor REAL; 
BEGIN 
SELECT COUNT(*) INTO emtotal FROM EMPLOYEES ;
if (emtotal = 0 )then 
RAISE vide ; 
End IF ;
SELECT COUNT(*) INTO mang FROM EMPLOYEES WHERE JOB_ID = 'IT_PROG';
mangpor := 100 * mang  / emtotal;
DBMS_OUTPUT.PUT_LINE('nbre des employees= '|| mang);
DBMS_OUTPUT.PUT_LINE('proportion des programmers ='|| mangpor);
EXCEPTION 
when vide Then 
RAISE_APPLICATION_ERROR(-20500,' la table EMPLOYEES est vide') ;
END ;
select *
from EMPLOYEES ;
create table t_vide(x integer);

Set serveroutput on ;
DECLARE 
N INTEGER ;
res Integer ; 
i integer ; 
BEGIN 
N :=&ENTER_UN_CHIFFRE ;
dbms_output.put_line ('la table de multiplication de ' || N);
For i  in 1..9 loop 
res:= N*i;
DBMS_OUTPUT.PUT_LINE(N || '*' || i ||'=' || N*i);
end loop;
END ; 