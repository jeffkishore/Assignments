use edu_platform;

create table customers (
cus_id int primary key auto_increment,
cus_name varchar(50)
);

create table products (
prod_id int primary key auto_increment,
prod_name varchar(50),
price decimal(10,2),
stock int
);

create table orders(
od_id INT PRIMARY KEY AUTO_INCREMENT,
cus_id INT,
prod_id INT,
qnty INT,
order_amount DECIMAL(10,2),
FOREIGN KEY (cus_id) REFERENCES customers(cus_id),
FOREIGN KEY (prod_id) REFERENCES products(prod_id)
);

INSERT INTO customers (cus_name) VALUES
('Kishore'),
('Prithivi'),
('Varun'),
("siddesh");

insert into products (prod_name , price ,stock) values
("laptop" , 40000 , 20),
("mouse" , 999 , 15),
("keyboard" , 1500 , 10),
("monitor" , 15000 , 10);

INSERT INTO orders (cus_id, prod_id, qnty, order_amount) VALUES
(1, 1, 3, 40000),
(1, 1, 4, 20000),
(2, 3, 2, 8000),
(3, 4, 5, 5000);



create view totall_orders as
select c.cus_id , c.cus_name , 
count(o.od_id) as t_orders,
sum(o.order_amount) as t_spent
from customers c
left join orders o on c.cus_id = o.cus_id
group by c.cus_id , c.cus_name;

select * from totall_orders;

CREATE TABLE employyyee (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    role VARCHAR(50),
    salary DECIMAL(10,2)
);

drop table employee;

DELIMITER $$
CREATE PROCEDURE addd_employee(
    IN emp_name VARCHAR(100),
    IN emp_role VARCHAR(50),
    IN emp_salary DECIMAL(10,2)
)
BEGIN
    INSERT INTO employyyee (name, role, salary)
    VALUES (emp_name, emp_role, emp_salary);
END $$
DELIMITER ;

CALL addd_employee('Arun', 'Manager', 50000);

select * from employyyee 


DELIMITER $$
CREATE FUNCTION calc_tax(price DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN price * 0.10;
END $$
DELIMITER ;

SELECT prod_name, price, calc_tax(price) AS tax FROM products;


DELIMITER $$
CREATE PROCEDURE update_stock(
    IN p_id INT,
    IN new_stock INT
)
BEGIN
    UPDATE products
    SET stock = new_stock
    WHERE product_id = p_id;
END $$
DELIMITER ;

CALL update_stock(1, 50);

CREATE VIEW order_details_view AS
SELECT 
    o.od_id,
    c.cus_name,
    p.prod_name,
    o.qnty,
    o.order_amount
FROM orders o
JOIN customers c ON o.cus_id = c.cus_id
JOIN products p ON o.prod_id = p.prod_id;

select * from order_details_view




