DECLARE 
n number := 0;
BEGIN 
FOR i In 1000 ..10000 loop
n := n+i ;
end loop ;
DBMS_OUTPUT.PUT_LINE('la somme égale'|| n) ;
END ;

