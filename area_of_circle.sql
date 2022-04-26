create table areas(
  radius number(3),
  area number(20, 3)
);
declare
radius number(3);
area number(20, 3);
pi constraint number(3, 2):= 3.14;
begin
radius:=5;
while(radius<=10)
loop
area:=pi*radius*radius;
insert into areas values(radius, area);
radius:=radius+1;
end loop;
end;

-- Input and Output
select * from areas;

    RADIUS        AREA
   ---------    --------
      5           78.5
      6           113.04
      7           153.86
      8           200.96
      9           254.34
      10          314
      
6 rows selected.
