SQL> set serveroutput on;
 1  declare
  2  f number:= 1;
  3  n number:=&n;
  4  begin
  5  while n>0
  6  loop
  7  f:=n*f;
  8  n:=n-1;
  9  end loop;
 10  dbms_output.put_line('factorial is '||f);
 11* end;
