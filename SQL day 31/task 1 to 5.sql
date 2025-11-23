-- /// day 31 task 1 to 5 ///

create database collegedetails;
use collegedetails;

create table departments (
id int primary key auto_increment ,
name varchar(100),
description text ); 

insert into departments ( name , description ) values 
('Computer Science', 'Department of software and computing'),
( 'Electronics', 'Department of circuits and communication'),
('Mechanical', 'Department of machines and manufacturing ');


create table users (
id int primary key auto_increment ,
name varchar(50) ,
role varchar (20) ,
dept_id int,
foreign key (dept_id) references departments(id) );

insert into users (name, role, dept_id) values
('Pinkman', 'student', 1),
('Walter White', 'student', 2),
('Gus fring', 'teacher', 1);


select * from users
where role = 'student';

alter table users 
drop column phone;

alter table users
add phone bigint;

UPDATE users SET phone = '9876543210' WHERE id = 1;
UPDATE users SET phone = '9123456780' WHERE id = 2;
UPDATE users SET phone = '9988776655' WHERE id = 3;



create table courses (
id int primary key auto_increment ,
course_name varchar (50) );

insert into courses (course_name) values  
('Web Development'),
('Data analaytics'),
('Digital Electronics');



create table enrollments (
    id int primary key auto_increment,
    user_id int,
    course_id int,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);


INSERT INTO enrollments (id, user_id, course_id) VALUES
(1, 1, 1), 
(2, 2, 2);


select 
users.name as student_name,
courses.course_name
from users
JOIN enrollments ON users.id = enrollments.user_id
JOIN courses ON courses.id = enrollments.course_id
WHERE users.role = 'student';