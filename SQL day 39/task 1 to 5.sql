create database day39;
 use day39;
 drop database sla;
 create table student_details (
 student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    department_id INT,
    phone VARCHAR(20)
);

INSERT INTO student_details (name, department_id, phone) VALUES
('Arun', 1, '9991112222'),
('Priya', 2, '8887776666'),
('Vikram', 1, '7776665555'),
('Kavya', 3, '9998887777');


CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    dept_name VARCHAR(100)
);
INSERT INTO departments VALUES
(1, 'Computer Science'),
(2, 'Mechanical'),
(3, 'Electronics');

CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(100),
    department_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
INSERT INTO employees (emp_name, department_id, salary) VALUES
('Ravi', 1, 55000),
('Meena', 1, 62000),
('Suresh', 2, 45000),
('Divya', 3, 70000),
('Karan', 2, 38000);

delimiter $$
create procedure print_studentdetails()
begin 
select * from student_details;
end $$

delimiter ;

CALL print_studentdetails();

delimiter $$
create procedure view_dptid (in dept_id int)
begin 
select * from employees
where department_id = dept_id;
end $$

delimiter ; 

CALL view_dptid(2);
DROP PROCEDURE IF EXISTS highestsalary;
delimiter $$
create procedure highestsalary(out max_sal decimal(10,2))
begin
select max(salary) into max_sal 
from employees;
end $$
delimiter ;

CALL highestsalary(@highest);

DELIMITER $$

CREATE PROCEDURE get_employees_in_salary_range(
    IN min_salary DECIMAL(10,2),
    IN max_salary DECIMAL(10,2)
)
BEGIN
    SELECT * FROM employees
    WHERE salary BETWEEN min_salary AND max_salary;
END $$

DELIMITER ;

CALL get_employees_in_salary_range(40000, 65000);


SELECT @highest;

DROP PROCEDURE IF EXISTS update_student_phone;
DELIMITER $$
CREATE PROCEDURE update_student_phone(
    IN stu_id INT,
    IN new_phone VARCHAR(20)
)
BEGIN
    UPDATE student_details
    SET phone = new_phone
    WHERE student_id = stu_id;
END $$
DELIMITER ;

CALL update_student_phone(1, '9876543210');





