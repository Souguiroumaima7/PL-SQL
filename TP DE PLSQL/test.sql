DECLARE 
c COUNTRIES%ROWTYPE ;

BEGIN 
c.COUNTRY_ID := '1';
c.COUNTRY_NAME := 'tunisia';

INSERT INTO COUNTRIES VALUES c ;

END;

select *
FROM COUNTRIES ;

CREATE TABLE res (n NUMBER(3));

DECLARE 
NB number:=1 ; 
BEGIN 
loop 
INSERT INTO res  VALUES (nb);
nb :=nb+1;
Exit when nb>100 ;
END Loop ;
END ;

select *
from res ;
