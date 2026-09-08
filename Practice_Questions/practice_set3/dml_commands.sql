use practice;

/*1. Create a table called students with:
	student_id
	fname
	age
	city
	marks
Insert one student into the table.*/ 
create table students (
	student_id int primary key not null,
    fname varchar(50) not null,
    age int,
    city varchar(50),
    marks int
);
insert into students values (101, "Rutik Bajad", 22, "Pune", 450);

/*2. Insert 5 students at once into the students table.
Make sure each student has a different student_id.*/
insert into students
values 
	(102, "Harish Ambalgikar", 20, "Pune",370),
    (103, "Raj Amberkar", 21, "Ratnagiri", 380),
    (104, "Sarthak Amrutkar", 21, "Pune", 460),
    (105, "Atharva Babhane", 20, "Satara",300),
    (106, "Piyush Barbudhe", 21, "Amravati", 490);
    
/*3. Insert a student while specifying only:
	student_id
	fname
	age
Don't provide values for the remaining columns.
Observe what happens to the columns you didn't specify.*/
insert into students (student_id, fname, age)
values 
	(107, "Lokesh Chavan", 22); -- rest values become null

/*4. Insert 10 employees into an existing employees table.
Each employee should have:
	employee_id
	fname
	department
	salary
	city
	status
*/
insert into employees (employee_id, fname, department, salary, city, status)
values 
	(1, 'Piyush', 'IT', 80000, 'Amravati', 'Inactive'),
    (2, 'Lokesh', 'HR', 75000, 'Dhule', 'Active'),
    (3, 'Rutik', 'ML', 67000, 'Karhalwadi', 'Active'),
    (4, 'Prajwal', 'Web-Developer', 75000, 'Pune', 'Inactive'),
    (5, 'Yash', 'Web-Developer', 75000, 'Buldhana', 'Active'),
    (6, 'Sneha', 'ML', 75600, 'Ahilyanagar', 'Inactive'),
    (7, 'Akanksha', 'DS', 95000, 'Yavatmal', 'Active'),
    (8, 'Divya', 'DS', 42900, 'Raver', 'Active'),
    (9, 'Sanika', 'HR', 37600, 'Muktainagar', 'Active'),
    (10, 'Atharva', 'IT', 48000, 'Chikhali', 'Inactive');

-- 5. Update the city of the student whose student_id = 103 to Mumbai.
update students
set city = 'Mumbai'
where student_id = 103;

-- 6. Increase the salary of all IT employees by 10%. Don't manually calculate the new salary for every employee.
update employees
set salary = salary + (salary / 10)
where department = 'IT';

-- 7. Increase the salary of employees whose current salary is below 60,000 by 5%.
update employees
set salary = salary + (salary * 0.05)
where salary < 60000;

-- 8. Change the status of all employees from Inactive to Active.
update employees 
set status = 'Active'
where status = 'Inactive';

-- 9. Change the department of the employee with employee_id = 7 to Finance.
update employees 
set department = 'Finance'
where employee_id = 7;

/* 10. 🔥
Give a 15% salary increase to employees who:
	work in IT
	AND have a salary greater than 70,000.
This should require multiple conditions in UPDATE. */
update employees
set salary = salary + salary * 0.15
where department = "IT" and salary > 70000;

-- 11. Delete the student whose student_id = 5.
delete from students
where student_id = 105;

-- 12. Delete all employees whose status is Inactive.
delete from employees 
where status = 'Inactive';

-- 13. Delete all employees whose salary is below 45,000.
delete from employees
where salary < 45000;

/*14. 🔥 
Delete employees who:
	work in Sales
	AND joined before 2022.
Be careful with your WHERE condition.
*/
delete from employees
where department = 'Sales' and joining_year < 2022;

/* 15. Delete all records from the students table using DELETE.
Then check whether the table itself still exists.*/
delete from students; -- table still exists

/* 16. 
Create a table called:
	test_students
Insert at least 5 records.
Then use:
	TRUNCATE TABLE
to remove all records.
Afterward:
Check whether the table still exists.
Try inserting another record.
What do you observe?
*/
create table test_students (
	id int primary key not null,
    full_name varchar(50) not null
);
insert into test_students values 
(1, 'Harish'), (2, 'Raj'), (3, 'Sarthak'), (4, 'Atharva'), (5, 'Rutik');
truncate test_students; -- the table still exists
insert into test_students values
(1, 'Rutik'), (2, 'Harish'); -- the record is inserted successfully.

/*17. 🧠
You have two tables:
	students
	students_backup
students_backup contains old data that you no longer need.
Remove all records from students_backup using TRUNCATE, but keep the table available for future use.*/
create table students_backup (
	id int primary key not null,
    full_name varchar(50) not null
);
insert into students_backup values 
(1, 'Harish'), (2, 'Raj'), (3, 'Sarthak'), (4, 'Atharva'), (5, 'Rutik');
truncate students_backup;

/* This is the part you specifically asked for.
Suppose you have:
	employees
and:
	it_employees
18. Create an it_employees table with appropriate columns.
Then retrieve only IT employees from employees and insert them into it_employees using:
	INSERT INTO ... SELECT
Do not manually insert the employee values.*/
create table it_employees (
	employee_id int not null, 
	fname varchar(50) not null, 
    department varchar(50) default 'IT', 
    city varchar(50), 
    age int, 
    salary decimal(10, 2), 
    joining_year year, 
    status varchar(10) default 'Active');
insert into it_employees
select 
	employee_id, fname, department, city, age, salary, joining_year, status
from employees
where department = 'IT';

/*19. 🔥
Create a table called:
	high_salary_employees
Retrieve employees whose salary is greater than 70,000 from the employees table and insert them into high_salary_employees.
Use:
	INSERT INTO
	SELECT
	FROM
	WHERE
The data must come from the existing employees table.*/
create table high_salary_employees (
	employee_id int not null, 
	fname varchar(50) not null, 
    department varchar(50) default 'IT', 
    city varchar(50), 
    age int, 
    salary decimal(10, 2), 
    joining_year year, 
    status varchar(10) default 'Active');
insert into high_salary_employees
select 
	employee_id, fname, department, city, age, salary, joining_year, status
from employees
where salary > 70000;
select * from high_salary_employees;

/*🏆 20. MASTER DML CHALLENGE
You have these tables:
	employees
	employees_backup
	senior_employees
The employees table contains:
	employee_id
	fname
	department
	salary
	city
	joining_year
	status
Perform the following operations:
Step 1 — INSERT
	Insert 5 new employees into employees.
Step 2 — UPDATE
	Increase the salary of all employees in the Finance department by 10%.
Step 3 — UPDATE
	Change employees who joined before 2020 to:
	status = 'Senior'
Step 4 — INSERT INTO SELECT
	Create/populate senior_employees by retrieving employees whose:
	status = 'Senior'
	from employees.
	You must use INSERT INTO ... SELECT.
Step 5 — DELETE
	Delete employees whose salary is below 45,000.
Step 6 — BACKUP
	Insert all remaining employees into employees_backup using:
	INSERT INTO ... SELECT
Step 7 — TRUNCATE
	Finally, remove all records from employees_backup using:
	TRUNCATE TABLE employees_backup;
Step 8 — Verify
	Use SELECT queries to verify the final state of all three tables.
*/
create table employees_backup (
	employee_id int not null, 
	fname varchar(50) not null, 
    department varchar(50) default 'IT', 
    city varchar(50), 
    age int, 
    salary decimal(10, 2), 
    joining_year year, 
    status varchar(10) default 'Active');
create table senior_employees (
	employee_id int not null, 
	fname varchar(50) not null, 
    department varchar(50) default 'IT', 
    city varchar(50), 
    age int, 
    salary decimal(10, 2), 
    joining_year year, 
    status varchar(10) default 'Senior');
select * from employees;  

insert into employees (employee_id, fname, department, salary, city, status)
values 
	(21, 'Piyush', 'IT', 80000, 'Amravati', 'Inactive'),
    (22, 'Lokesh', 'HR', 75000, 'Dhule', 'Active'),
    (23, 'Rutik', 'ML', 67000, 'Karhalwadi', 'Active'),
    (24, 'Prajwal', 'Web-Developer', 75000, 'Pune', 'Inactive'),
    (25, 'Yash', 'Web-Developer', 75000, 'Buldhana', 'Active');

update employees
set salary = salary + salary*0.1
where department = 'Finance';

update employees
set status = 'Senior'
where joining_year < 2020;

insert into senior_employees
select * from employees
where status = 'Senior';

delete from employees
where salary < 45000;

insert into employees_backup
select * from employees;

truncate table employees_backup;

select * from employees;
select * from senior_employees;
select * from employees_backup;


