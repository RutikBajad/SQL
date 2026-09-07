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
