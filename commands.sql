-- create a table
create TABLE students (
  id integer(5) primary key,   -- here from starting we know that id is PRIMARY KEY
  name varchar(5) not null,
  gender varchar(5) not null,
  age number(2),
  fees number(10)
);
-- insert some values
insert into students values (1, 'Rohan', 'M');
insert into students values (2, 'Jaya', 'F');

-- fetch all values of table
select * from students

-- fetch some values with condition that gender should be 'F'
select * from students where gender = 'F';

-- create a constraint specifying id as primary key after the table is created that is after creating the table we given this constraint of primary key
alter table students add constraint pri primary key(id);

-- create a constraint specifying age does not contain null value after the table is created
alter table students modify age not null;

-- create a constraint specifying fees being between 2500 and 5000
alter table students add constraint test check (2500<fees<5000);

-- create table students_dept having field id, name from students
create table students_dept AS SELECT id,name FROM students;

-- add the field join_date which is a field that can hold a date and it specify the batch starting date of student
alter table students add JOIN_DATE;

-- Modify the field of fees to hold a maximum of 100 numbers
alter table students modify fees number(100);

