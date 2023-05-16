-- zad 1 / Find All Information About Departments
select * from departments 
order by department_id ASC;

-- zad 2 / Find Salary of Each Employee
select name from departments
order by department_id;

-- zad 3 / Find Salary of Each Employee
select first_name, last_name, salary 
from employees 
order by employee_id;

-- zad4 / Find Full Name of Each Employee
select first_name, middle_name, last_name 
from employees
order by employee_id;

-- zad 5 / Find Email Address of Each Employee
select 
concat(first_name, '.', last_name, '@softuni.bg') 
as full_email_address
from employees AS e

-- zad 6 / Find All Different Employee’s Salaries
 select distinct salary 
 from employees;
 
 -- zad 7 / Find all Information About Employees
 select * from employees
 where job_title = 'Sales Representative'
 order by employee_id;
 
 -- zad 8 / Find Names of All Employees by Salary in Range
 select first_name, last_name, job_title
 from employees
 where salary between 20000 and 30000
 order by employee_id;
 
 -- zad 9  / Find Names of All Employees
select concat_ws(' ', first_name, middle_name, last_name) as 'Full Name'
 from 
 employees
 where
 salary = 25000 
 or salary = 14000
 or salary = 12500 
 or salary = 23600;
 
 -- zad 10 / Find All Employees Without Manager
 select first_name, last_name
 from employees
 where manager_id is null;
 
 -- zad 11 / Find All Employees with Salary More Than
 select first_name, last_name, salary
 from employees 
 where salary > 50000
 order by salary DESC;
 
 -- zad 12 /  Find 5 Best Paid Employees
 select first_name, last_name
 from employees
 order by salary desc limit 5;
 
 -- zad 13 / Find All Employees Except Marketing
 select first_name, last_name 
 from employees
 where department_id != 4;
 
 -- zad 14 / Sort Employees Table
 select * from employees
 order by salary DESC, 
 first_name ASC,
 last_name DESC,
 middle_name ASC;
 
 -- zad 15 / Create View Employees with Salaries
 create VIEW v_employees_salaries as
 select first_name, last_name, salary
 from employees;
 
 -- zad 16 / Create View Employees with Job Titles
 create VIEW v_employees_job_titles as
 select concat_ws(' ', first_name, middle_name, last_name) AS full_name, job_title
 from employees;
 
 -- zad 17 / Distinct Job Titles
 select distinct job_title 
 from employees 
 order by job_title;
 
 -- zad 18 / Find First 10 Started Projects
 select * from projects
 order by start_date, name LIMIT 10;
 
 -- zad 19 /  Last 7 Hired Employees
 select first_name, last_name, hire_date
 from employees
 order by hire_date DESC 
 LIMIT 7;
 
 -- zad 20 / Increase Salaries
UPDATE employees
set salary = salary * 1.12
where department_id IN (1, 2, 4, 11);

select salary from employees;

-- zad 21 / All Mountain Peaks
select peak_name from peaks
order by peak_name;

-- zad 22 / Biggest Countries by Population
select country_name, population
from countries
where continent_code = 'EU'
order by population DESC, country_name ASC
limit 30;

-- zad 23 / Countries and Currency (Euro / Not Euro)
select country_name, country_code,
if(currency_code = 'EUR', 'Euro', 'Not Euro')
from countries 
order by country_name ASC;

-- zad 24 / Countries and Currency (Euro / Not Euro)
select name from characters 
order by name ASC;



