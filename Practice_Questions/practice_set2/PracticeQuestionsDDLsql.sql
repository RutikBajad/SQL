use practice;

/*1. Create a table called students with these columns:
	student_id → integer
	fname → variable-length string
	age → integer
	city → variable-length string */

create table students(
	student_id int not null,
    fname varchar(50) not null,
    age int,
    city varchar(50), 
    constraint pk_students primary key (student_id) 
);

/*2. Create a table called products with:
	product_id
	product_name
	price
	category
Choose appropriate data types for each column. */

create table products (
	product_id int primary key not null,
    product_name varchar(50) not null,
    price decimal(10, 2) not null,
    category varchar(50) not null
);

/*3. Create a table called employees with:
	employee_id
	fname
	department
	salary
	joining_year
Make employee_id the PRIMARY KEY.*/

create table employee (
	employee_id int primary key not null,
    fname varchar(100) not null,
    department varchar(50) not null,
    salary decimal(10, 2) not null,
    joining_year int not null
);

/*4. Create a table called customers with:
	customer_id
	fname
	email
	age
Make customer_id the primary key and email UNIQUE.*/

create table customers (
	customer_id int primary key not null,
    fname varchar(100) not null,
    email varchar(30) unique not null,
    age int
);

/*5. Create a table called courses with:
	course_id
	course_name
	duration
	fees
Choose suitable data types and make course_id the primary key.*/

create table courses (
	course_id int primary key not null,
    course_name varchar(50) not null,
    duration time not null,
    fees decimal(10, 2) not null
);

-- 6. Add a column called phone to the students table.

alter table students 
add column phone varchar(10) unique not null;

-- 7. Add a column called email to the students table.

alter table students 
add column email varchar(30) unique not null;

-- 8. Modify the phone column so that it can store up to 15 characters.
-- Think carefully about the data type. Phone numbers shouldn't necessarily be stored as integers.

alter table students
modify column phone varchar(15);

-- 9. Rename the column fname in students to full_name.

alter table students
rename column fname to full_name;

-- 10. Rename the students table to student_details.

rename table students to student_details;

-- 11. Add a salary column to the employees table with an appropriate numeric data type.

alter table employee 
add column salary decimal(10, 3) not null;

-- 12. Add a UNIQUE constraint to the email column of the customers table.

alter table customers
modify column email varchar(50) unique;

-- 13. Add a NOT NULL constraint to the fname column of the customers table.

alter table customers
modify column fname varchar(50) not null;

-- 14. Add a column called status to the employees table and give it a default value of 'Active'.

alter table employee
add column status varchar(10) default 'Active';

-- 15. Remove the phone column from the student_details table.

alter table student_details
drop column phone;

-- 16. Create a temporary table called test_table with at least three columns.
-- Then completely remove the table using DROP TABLE.

create table temporary (
	temp_id int primary key unique not null,
    temp_name varchar(50),
    temp_date date
);
drop table temporary;

-- 17. Create two tables:
-- 	department
-- 	employee
-- Then delete only the employee table without deleting department.

create table department (d_id int primary key not null, d_name varchar(50));
create table employeee (e_id int primary key not null, e_name varchar(50));
drop table employeee;

-- 18. Create a table called old_students.
-- Then delete it only if it exists, so that your query doesn't produce an error if the table has already been deleted.

create table old_students (id int primary key, fname varchar(50));
drop table if exists old_students;

/*19. Employee Database Challenge
Create an employees table containing:
	employee_id
	fname
	email
	department
	salary
	joining_year
	city

Requirements:
	employee_id → PRIMARY KEY
	fname → NOT NULL
	email → UNIQUE
	salary → suitable numeric type
	city → suitable string type

Then:
	Add a phone column.
	Rename fname to full_name.
	Modify phone to allow 15 characters.
	Add a default 'Active' status column.
	Remove the phone column.
Do all of this using DDL commands, without recreating the table.*/

create table employee (
	employee_id int primary key not null, 
	fname varchar(40) not null, 
	email varchar(30) unique not null, 
	department varchar(50), 
    salary decimal(10, 2), 
    joining_year year,
    city varchar(50)
);

alter table employee 
add column phone varchar(10) unique not null;

alter table employee
rename column fname to full_name;

alter table employee
modify column phone varchar(15);

alter table employee
add column status varchar(10) default 'Active';

alter table employee 
drop column phone;

/*
🧠 20. Master Challenge
Start with:
	company	

Create a table containing:
	employee_id
	fname
	department
	salary
	city

Then perform this sequence:
	Step 1: Make employee_id the primary key.

	Step 2: Add an email column.

	Step 3: Make email unique.

	Step 4: Add an age column.

	Step 5: Rename fname → full_name.

	Step 6: Modify salary to an appropriate decimal type.

	Step 7: Add a status column with default value 'Active'.

	Step 8: Remove the age column.

	Step 9: Rename the table to company_employees.

	Step 10: Create another table called backup_employees.

	Step 11: Finally, drop backup_employees.
*/

create table company (
	employee_id int,
    fname varchar(50),
	department varchar(50),
	salary int,
	city varchar(50)
);

alter table company
modify column employee_id int primary key;

alter table company
add column email varchar(50);

alter table company
modify column email varchar(30) unique;

alter table company
add column age int;

alter table company
rename column fname to full_name;

alter table company
modify column salary decimal(10, 2);

alter table company
add column status varchar(10) default 'Active';

alter table company
drop column age;

rename table company to company_employees;

create table backup_employees (
	employee_id int,
    fname varchar(50),
	department varchar(50),
	salary int,
	city varchar(50)
);

drop table backup_employees;