create database practice;
use practice;

show tables;
-- 1. Display all columns and all employees from the employees table.

select * from employees;

-- 2. Display only the name, department, and salary of every employee.

select fname, department, salary from employees;

-- 3. Display the name, age, and city of all employees.

select fname, age, city from employees;

-- 4. Display all unique departments in the company.

select distinct department from employees;

-- 5. Display all unique cities where employees live.

select distinct city from employees;

-- 6. Display all unique combinations of department and city.

select distinct department, city from employees;

-- 7. Find all employees whose salary is greater than 70,000.

select * from employees where salary > 70000;

-- 8. Find all employees who work in the IT department.

select * from employees where department = 'IT';

-- 9. Find all active employees from Pune.

select * from employees where city = 'Pune' and status = 'Active';

/* 10. Find employees who are:
older than 25
AND have a salary greater than 60,000.*/

select * from employees where age > 25 and salary > 60000;

/*11. Display the 5 highest-paid employees.
You'll need to combine TOP with ORDER BY.*/

select * from employees order by salary desc limit 5;

-- 12. Display the 3 youngest employees.

select * from employees order by age asc limit 3;

-- 13. Find the number of employees in each department.

select department, count(employee_id) as total_employees 
from employees 
group by department;

-- 14. Find the average salary of each department.

select department, avg(salary) as avg_salary
from employees
group by department;

-- 15. Find the maximum salary in each city.

select city, max(salary) as max_salary
from employees 
group by city;

-- 16. Find the number of employees in each city.

select city, count(employee_id) as total_employees 
from employees
group by city;

/*17. Find departments having more than 4 employees.
Important: This should require GROUP BY + HAVING.*/

select department, count(employee_id) as total_employees 
from employees
group by department
having count(employee_id) > 4;

-- 18. Find departments whose average salary is greater than 65,000.

select department, avg(salary) as avg_salary
from employees
group by department
having avg(salary) > 65000;

-- 19. Find the top 3 highest-paid active employees.

select * from employees where status = 'Active' order by salary desc limit 3;

/*20. 🧠 Challenge
For each department, display:
	department
	number of employees
	average salary
	maximum salary
But only show departments where:
	average salary > 60,000
	number of employees >= 4
Finally, sort the result by average salary from highest to lowest.*/

select department, count(employee_id) as no_of_employees, avg(salary) as avg_salary, max(salary) as max_salary
from employees
group by department
having avg(salary) > 60000 and count(employee_id) >= 4
order by avg(salary) desc;