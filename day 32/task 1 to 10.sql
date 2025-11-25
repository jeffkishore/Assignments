create database edu_platform_new;
USE edu_platform_new;
SHOW TABLES;
SELECT * FROM assignments;
SELECT * FROM lesson;
SELECT * FROM assignments;
-- Assignment Day 32 - Data Types + Basic SQL Operations (CRUD + Filters + Sorting + Limit)
-- Insert 3 new employees into the employees table.
create table empployee(
id int primary key auto_increment,
emp_name varchar(50),
desigination varchar(50),
salery decimal(10,2)
);
select * from empployee;
insert into empployee(emp_name,desigination,salery) values ("pinkman","Developer",50000),
("walter white","testing",50000),
("skyler","process associate",50000)
-- Write a SELECT query to display only first_name and hire_date.
create table employees (
id int primary key auto_increment,
first_name varchar(100),
last_name varchar(100),
salary decimal(10,2),
hire_date date,
dep_id int,
active boolean
);
INSERT INTO employees 
(first_name, last_name, salary, hire_date, dep_id, active) 
VALUES
-- Engineering (Dept 1)
('Asha', 'Patel', 70000, '2022-03-01', 1, 1),
('Rahul', 'Mehra', 82000, '2021-07-10', 1, 1),
('Karan', 'Singh', 95000, '2019-11-12', 1, 1),
('Sneha', 'Desai', 60000, '2020-04-15', 1, 1),
('Vikram', 'Rao', 78000, '2018-08-05', 1, 1),
('Priya', 'Iyer', 88000, '2023-01-10', 1, 1),

-- Human Resources (Dept 2)
('Sima', 'Roy', 50000, '2020-11-05', 2, 1),
('Anita', 'Kapoor', 52000, '2022-06-20', 2, 1),
('Pooja', 'Seth', 48000, '2021-02-17', 2, 1),
('Deepak', 'Chauhan', 55000, '2019-03-11', 2, 0),
('Farah', 'Qureshi', 54000, '2023-02-18', 2, 1),
('Rohit', 'Talwar', 51000, '2022-10-10', 2, 1),

-- Sales (Dept 3)
('Arjun', 'Sharma', 45000, '2023-01-25', 3, 1),
('Nisha', 'Verma', 58000, '2021-04-01', 3, 1),
('Sameer', 'Khan', 62000, '2018-12-15', 3, 1),
('Yusuf', 'Ali', 53000, '2020-05-30', 3, 0),
('Tina', 'Mathew', 65000, '2019-09-14', 3, 1),
('Ramesh', 'Gupta', 47000, '2022-11-05', 3, 1),

-- Marketing (Dept 4)
('Meera', 'Joshi', 70000, '2019-06-21', 4, 1),
('Aditya', 'Shetty', 72000, '2022-01-11', 4, 1),
('Kavya', 'Nair', 69000, '2021-03-19', 4, 1),
('Harish', 'Dutta', 64000, '2023-07-10', 4, 1),
('Payal', 'Rathod', 61000, '2020-10-28', 4, 0),
('Suresh', 'Bhat', 75000, '2018-02-02', 4, 1),

-- Finance (Dept 5)
('Neha', 'Kulkarni', 80000, '2019-12-12', 5, 1),
('Sunil', 'Borkar', 82000, '2020-07-01', 5, 1),
('Divya', 'Jain', 77000, '2021-11-17', 5, 1),
('Manish', 'Goyal', 83000, '2022-04-25', 5, 1),
('Bhavna', 'Arora', 76000, '2023-03-18', 5, 1),
('Kishor', 'Mahadevan', 69000, '2018-05-20', 5, 0);
select * from employees;
select first_name,hire_date from employees;
-- Increase one employee’s salary using UPDATE.
update employees set salary= 90000 where id=1
-- Delete an employee hired before 2021.
-- delete from employees where hire_date < "2021-01-01" we cannot do this because we are in safe mode 
SELECT id, first_name, hire_date 
FROM employees
WHERE hire_date < '2021-01-01';
delete from employees where id in (3,4,5,7,10,15,16,17,19,23,24,25,26,30)
-- Sort all employees by salary ascending.
select first_name, last_name from employees order by salary asc;
select * from employees order by salary asc;
-- Practical Tasks
-- Create a table products with correct data types (id, name, price, created_at).
create table products (
id int primary key auto_increment,
name varchar(100),
price decimal(10,2),
created_at datetime
);
-- Insert 5 sample products.
INSERT INTO products (name, price, created_at)
VALUES 
('Laptop', 55000.00, '2025-01-15 10:30:00'),
('Headphones', 1999.99, '2025-01-16 14:20:00'),
('Smartphone', 29999.50, '2025-01-17 09:15:00'),
('Keyboard', 999.00, '2025-01-18 12:45:00'),
('Mouse', 499.00, '2025-01-18 12:50:00');
select * from products;
-- Write a query that lists products priced above 500.
 select name from products where price>1000;
 -- Update product name using its id.
update products set name = "ipad" where id =1;
-- Show top 3 most expensive products using ORDER BY + LIMIT.
alter table products add limited_no int;
update products set limited_no =2 where id=1;
update products set limited_no =7 where id=2;
update products set limited_no =3 where id=3;
update products set limited_no =1 where id=4;
update products set limited_no =2 where id=5;
select name from products where price >2000 order by limited_no asc;  