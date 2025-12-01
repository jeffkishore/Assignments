 use day39;

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    order_date DATE
);

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2)
);

CREATE TABLE user_logins (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    login_time DATETIME
);

DELIMITER $$
CREATE PROCEDURE insert_order(
    IN p_product_id INT,
    IN p_quantity INT,
    IN p_price DECIMAL(10,2),
    IN p_order_date DATE
)
BEGIN
    INSERT INTO orders(product_id, quantity, price, order_date)
    VALUES (p_product_id, p_quantity, p_price, p_order_date);
END $$
DELIMITER ;

CALL insert_order(1, 5, 120.50, '2025-12-01');


DELIMITER $$
CREATE PROCEDURE calculate_bill(
    IN p_price DECIMAL(10,2),
    IN p_qty INT,
    OUT p_total DECIMAL(10,2)
)
BEGIN
    SET p_total = p_price * p_qty;
END $$
DELIMITER ;

CALL calculate_bill(100, 3, @total);
SELECT @total;

DELIMITER $$
CREATE PROCEDURE log_user_login(IN p_user_id INT)
BEGIN
    INSERT INTO user_logins(user_id, login_time)
    VALUES (p_user_id, NOW());
END $$
DELIMITER ;
CALL log_user_login(10);

DELIMITER $$
CREATE PROCEDURE total_sales_month(
    IN p_year INT,
    IN p_month INT,
    OUT total_sales DECIMAL(10,2)
)
BEGIN
    SELECT SUM(price * quantity)
    INTO total_sales
    FROM orders
    WHERE YEAR(order_date) = p_year
      AND MONTH(order_date) = p_month;
END $$
DELIMITER ;

CALL total_sales_month(2025, 12, @sales);
SELECT @sales;

DELIMITER $$
CREATE PROCEDURE increase_price(
    IN p_percentage DECIMAL(5,2)
)
BEGIN
    UPDATE products
    SET price = price + (price * p_percentage / 100);
END $$
DELIMITER ;

CALL increase_price(10);

