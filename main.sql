/*---------------------------------------------main table-----------------------------------------*/
create table family(
id integer,
firstname varchar(20),
middlename varchar(20),
lastname varchar(20),
mobileno integer(10) primary key,
age integer,
salary integer
);
insert into family values(1,'suresh','nathalal','halai',8758190497,49,50000);
insert into family values(2,'amrutben','sureshbhai','halai',9426837287,45,30000);
insert into family values(3,'sumati','sureshbhai','halai',9016022090,21,10000);
insert into family values(4,'utapal','sureshbhai','halai',7041511686,'',10000);

/*----------------------------------------------------------------------------------------------------*/

/*--------------------------------------------------------local table--------------------------------*/

create table familys(
id integer,
firstname varchar(20),
middlename varchar(20),
lastname varchar(20),
age integer,
salary integer
);
insert into familys values(1,'suresh','nathalal','halai',49,50000);
insert into familys values(2,'amrutben','sureshbhai','halai',45,30000);
insert into familys values(3,'sumati','sureshbhai','halai',21,10000);
insert into familys values(4,'utapal','sureshbhai','halai','',10000);



/*----------------------------------------------------------------------------------------------------*/

/*----------------------------------column print----------------------------------*/
/*
select firstname
from family;
*/

/*----------------------------------row print---------------------------------------------------*/
/*
select *
from family
where id=4;
*/

/*__create
create table family(
id integer,
firstname varchar(20),
middlename varchar(20),
lastname varchar(20),
mobileno integer(10) primary key,
age integer
);
*/
/*__drop
drop table family;
-It is used to delete both the structure and record stored in the table.
*/

/*__alter with add tag
alter table family add dateofbirth integer ;
-It is used to alter the structure of the database. This change could be either to modify the characteristics of an existing attribute or probably to add a new attribute.
*/

/*__alter with add and column
alter table family add country column india;
-To add a new column in the table.
*/

/*__alter with modify
alter table family modify (country varchar(20));
*/
/*__truncate
truncate table family;
-It is used to delete all the rows from the table and free the space containing the table.
*/

/*__insert any values
insert into family values(4,'utpal','sureshbhai','halai',7041511686,19);
*/

/*update family
set firstname='utpal'
where firstname='utapal'; 
-used any key ex = id,firstname,middlename,lastname,mobileno,age
*/

/*delete from family where firstname='utapal'; 
-used any key ex = id,firstname,middlename,lastname,mobileno,age 
*/

/*__and
select *from family
where firstname='utapal' and mobileno=7041511686;
-used any key ex = id,firstname,middlename,lastname,mobileno,age
*/


/*__or
select *from family
where firstname='utapal' or id=4;
-used any key ex = id,firstname,middlename,lastname,mobileno,age
*/

/*__not
select *from family
where not firstname ='utapal';
-used any key ex = id,firstname,middlename,lastname,mobileno,age
*/

/*__commit
delete from family
where id=4;
commit;
-Commit command is used to save all the transactions to the database.
*/

/*__rollback
delete from family
where id=3;
rollback;
-Rollback command is used to undo transactions that have not already been saved to the database.
*/

/*
savepoint firstname;
-It is used to roll the transaction back to a certain point without rolling back the entire transaction.
*/

/*__select
select age
from family
where age<25;
-This is the same as the projection operation of relational algebra. It is used to select the attribute based on the condition described by WHERE clause.
*/

/*-------------------------------where-----------------------------------------------------------*/

/*__<
select salary
from family
where salary<11000;
*/

/*__>
select salary
from family
where salary>10000;
*/

/*__==
select salary
from family 
where salary==10000;
*/

/*__<=
select salary 
from family
where salary <=10000;
*/

/*__>=
select salary
from family
where salary>=11000;
*/

/*__!=
select salary
from family
where salary != 10000;
*/

/*__isnull
select age
from family
where not age isnull;
*/

/*
select salary
from family
where salary >= all (select salary
from family
where id=4);
-The following query finds rows whose values in the column_name are greater than the biggest values returned by the subquery:
*/

/*__and with condition
select *
from family
where salary>10000 and salary <50000;
*/

/*__ or with condition
select *
from family
where salary>=10000 or salary<=51000;
*/

/*__between
select *
from family
where salary between 30000 and 50000;
-The BETWEEN operator searches for values that are within a set of values, given the minimum value and maximum value. Note that the minimum and maximum values are included as part of the conditional set.
*/


/*__in
select *
from family
where lastname in('halai');
-The IN operator compares a value to a list of specified values. The IN operator returns true if the compared value matches at least one value in the list; otherwise, it returns false.
*/

/*__like
select *
from family
where firstname like('u%');
-'u%' in u is firstname firstcharter.
-The LIKE operator compares a value to similar values using a wildcard operator. SQL provides two wildcards used in conjunction with the LIKE operator:
*/

/*__any
select *
from family
where salary <= any (select *
from family
where id=4
);
-The ANY operator compares a value to any value in a set according to the condition.
Similar to the ALL operator, the ANY operator must be preceded by a comparison operator and followed by a subquery.
*/

/*__exists
select id
from family
where exists(select id
from familys
where  family.id = familys.id
);
-The EXISTS operator tests if a subquery contains any rows:
-If the subquery returns one or more rows, the result of the EXISTS is true; otherwise, the result is false.
*/

/*__as
select id as f_id
from family ;
-When we design the tables, we often keep the column names short e.g., so_no for sales order number and inv_no for the invoice number. Then we use the SELECT statement to query the data from the table, the output is not descriptive.
To assign a column a new name in a query, you use the column alias. The column alias is just a temporary name of the column during the execution of a query.
*/

/*__count
select count(familys.id)
from familys;
-We often use the column aliases for the expressions in the select list. For example, the following query uses headcount as the column alias of the expression that returns the number of employees:
*/





select *from family;
select *
from familys;