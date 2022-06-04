set serveroutput on ; 
DECLARE 
R_ID REGIONS.REGION_ID%type :=8 ;
type RG is RECORD (r_name REGIONS.REGION_NAME%type);
R RG; 
begin 
select REGIONS.REGION_NAME into R from REGIONS where REGIONS.REGION_ID = R_ID ;
dbms_output.put_line('region_name = ' || R.r_name ) ;
EXCEPTION 
when NO_DATA_FOUND THEN dbms_output.put_line('no data found with id' || R_ID);
end ;
