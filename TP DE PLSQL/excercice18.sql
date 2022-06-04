--REALISER LE BLOC PL/SQL SUIVANT : 
-- travailler avec 3 blocs imbriquées 
-- utuliser 2 variabale : la premiere , une variable qui contient la date systeme et sera definie dans le bloc .
--la deuxieme variable 'ma variable' sera definie au niveau de chaque bloc et permettre d' afficher dans quel bloc ou se situe .
set serveroutput on
declare 
bx varchar2(20):='bloc0' ;
begin
bx:='bloc1';
dbms_output.put_line(bx) ;
dbms_output.put_line(SYSDATE) ;
    begin 
    bx:='block2';
    dbms_output.put_line(SYSDATE) ;
    dbms_output.put_line(bx) ;
        begin 
        bx:='block3';
        dbms_output.put_line(SYSDATE) ;
        dbms_output.put_line(bx) ;
        end ;
    end ;
end ;