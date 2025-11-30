use edu_platform_new;

create table courses (
course_id int primary key auto_increment,
course_name varchar(50)
);

select * from courses;



create table student_details (
id int primary key auto_increment ,
course_id int,
name varchar(50),
marks int,
foreign key (course_id) references courses (course_id) 
);

drop table student_details;

select * from student_details;

create table product_details (
product_id int primary key auto_increment,
product_name varchar(50),
qnty int ,
price decimal (10,2)
);

select * from product_details;


insert into courses ( course_name) values 
("sql"),
("python"),
("java"),
("C"),
("DA");

insert into student_details (course_id,name,marks) values
(2,"kishore",98),
(3,"vino",75),
(1,"prithivi",86),
(1,"rihaan",89),
(4,"siddhu",66),
(5,"varun",69),
(3,"prasanna",99);

insert into product_details (product_name,qnty , price) values
("laptop" , 3 , 500000),
("mouse" , 5 , 999),
("keyboard" , 3 , 1500),
("monitor" , 2 , 15000);

create view high_score as 
select name , marks
from student_details
where marks > 85 ;
-- select * from high_score

create view studentcourses_views as 
select s.id, s.name , s.marks , c.course_name
from student_details s
join courses c on s.course_id = c.course_id;
select * from studentcourses_views;

SELECT * 
FROM studentcourses_views
ORDER BY id;

delimiter $$
create procedure get_product_details(in pid int)
begin
select product_id ,product_name,qnty,price 
from product_details
where product_id = pid;
end $$
delimiter ;

call get_product_details(1);

delimiter $$
create function total(q int , p decimal(10,2))
returns decimal (10,2)
deterministic
begin
return q * p;
end $$
delimiter ;

select
product_id, product_name , qnty , price , total(qnty ,price) as total_amount
from product_details;









