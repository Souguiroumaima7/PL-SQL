set serveroutput on ; 
declare 
cursor C2 is select Product_Name , Product_Price from produit ORDER by  Product_Name DESC ;
V2 C2%RowType ;
begin 
open C2 ;
Fetch C2 into V2 ; 
while (C2%Found)and (C2%RowCount<=5) loop 
dbms_output.put_line ('V2.Product_Name :' || V2.Product_Name) ;
dbms_output.put_line ('V2.Product_Price :' || V2.Product_Price) ;
Fetch C2 into V2 ;
end loop ; 
close C2 ;
end ;