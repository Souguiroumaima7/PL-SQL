--creer une procedure qui permet de prendre 2 valeures enrtrée en parametre et distingue quelle est la valeur minimale entre eux 
--elle va enregistrer la valeur minimale dans une autre variable de sortie 
-- pour faire l'apple à cette procédure avec les 2 valeurs suivants 
set serveroutput on ; 
declare
a number ;
b number ;
c number ;
procedure comp_(x in number,y in number,z out number ) is
begin
if x<y then 
z:=x ;
else 
z:=y ;
end if ;
end comp_ ;
begin 
a:=23;
b:=45;
comp_(a,b,c);
dbms_output.put_line('c : = ' || c) ;
end ;
