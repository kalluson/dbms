create table stud_master (
  rollno number(2),
  name varchar(20),
  age number(2),
  phno number(10),
  city varchar(20)
);
create table audit_student (
  rollno number(2),
  name varchar(20),
  operation varchar(15),
  dateofudp date
);
create or replace trigger kk after insert or delete or update on stud_master
for each row
declare
operation varchar(15);
rollno number(2);
name varchar(20);
begin
if inserting then operation:='insert';
end if;
if updating then operation:= 'update';
end if;
if deleting then operation:= 'delete';
end if;
rollno:=:old.rollno;
name:=:old.name;
insert intp audit_student300 values(rollno,name,operation,sysdate);
end;
/

-- Input and Output
Insert:-
insert into stud_master values('1', 'kanika', '19', '9758966442','indore');
1 row created

Update:-
update stud_master set name = 'kanu' where rollno = 1;
1 row updated

Delete:-
delete from stud_master where rollno = 1;
1 row deleted

select *from audit_student;

    ROLLNO     NAME      OPERATION     DATEOFUPDATE
   -------- --------- -------------- ----------------
      1       kanika     insert         03-mar-14
      1       kanika     update         03-mar-14
      1       kanu     delete         03-mar-14
