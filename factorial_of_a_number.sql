set serveroutput on;
declare
  fact number(10):=1;
  n number(10);
  begin
  n:=&n;
  while(n>=1)
  loop
  fact:=fact*n;
  n:=n-1;
  end loop;
  dbms_output.put_line('Answer='||fact);
end;

-- Input and Output
Enter value for n: 4
old 5: n:=&n
new 5: n:=4;
Answer = 24
