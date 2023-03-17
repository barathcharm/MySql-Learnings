-- SQL is case insensitive
/*
We will follow:
UPPERCASE: keywords
LOWERCASE: one -keywords
*/
USE store;
use store;
SHOW TABLES;
use exercise_hr;
SHOW TABLES;
use store;
select *
from customers
order by first_name;
use store;
select *
from customers
order by   first_name desc;
use exercise_hr;
select *
from employees
order by first_name;
select 1,2;
select 1+2;
select 100 - 50/2;
/*
SELECT 
from <table_name>

select *   -- for all columns
from <table_name>
*/
USE store;
SELECT first_name
FROM customers;

select first_name, last_name, points, points+10
from customers;

select first_name, last_name, points, points+10 AS new_points
from customers;
use exercise_hr;
select 171*214+625;
select first_name as 'first name',last_name as 'last name'
from employees;
select first_name, last_name,salary, salary *15/100 as pf
from employees;
use store;
select distinct state 
from customers;
use store;
select name,unit_price, 1.1* unit_price as 'new price'
from products;
/*
comparison operators
>
>=
<
<=
=
!= or <>alter
*/
select *
from customers;
select *
from customers
WHERE state = 'fl';
select *
from customers
WHERE POINTS> 3000;
select *
from customers
WHERE PHONE = 781-932-9754;
select *
from customers
WHERE POINTS> 3000 AND  Phone = "312-480-8498";
select *
from customers
WHERE POINTS>1000 AND birth_date>"1899" or state="va";
/* 
customers living in FL or VA or GA */
use store;
select *
from customers
where state = "FL" OR  state = "VA" OR state = "GA";
use store;
select *
from PRODUCTS
where quantity_in_stock in (49,38,72);
/* 
order of logical operators 
-not
-and
-or
*/


select * from customers;

select *
from customers
where address like '%trail%'  OR  address like '%avenue%';

-- and phone like "%9" and phone not like "%9"

-- where last_name like "%y"
-- where birth_date between "1990-01-01" and "2000-01-01";
-- where points between 3000 and 10000 
-- where points>3000 and points<10000 
use store;
-- select last_name
-- from customers;
select *
from customers
-- where last_name like "m%y"
where last_name regexp "acc";
/*
^ - Starts with
$ - ends with
| - logical OR
*/
use store;
select *
from customers
where last_name regexp "^mac|field$|rose";

select *
from customers
where last_name regexp "[bc]e";

select *
from employees
where first_name regexp  "b|c";
use exercise_hr;
select *
from employees
where first_name like "%b%" and first_name like "%c%";
use store;
select *
from orders
where shipper_id is null
limit 0,3;

/*-----3 loyal customers----*/
select *
from customers
order by points desc
limit 0,3;

/*---------------------*/
use exercise_hr;
 select *
from employees
order by last_name;
use exercise_hr;
select department_id
from departments
where department_name like "it";

select *
from employees
where department_id like 60;

-- select *
--  from employees inner join departments
--  on employees.department_id =  departments.department_id
use exercise_hr;
select *
 from employees inner join departments
 on employees.department_id =  departments.department_name
