use edu_platform;
CREATE TABLE persons (
    person_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    birthdate DATE
);
INSERT INTO persons (name, birthdate) VALUES
('Asha', '2000-03-15'),
('Rahul', '1995-07-10'),
('Meera', '2002-12-05'),
('Karan', '1998-09-22'),
('Sneha', '2001-01-30');

SELECT name,
DATEDIFF(
        MAKEDATE(YEAR(CURDATE()), DAYOFYEAR(birthdate)) 
        + INTERVAL (CASE WHEN MAKEDATE(YEAR(CURDATE()), DAYOFYEAR(birthdate)) < CURDATE() THEN 1 ELSE 0 END) YEAR,
        CURDATE()
    ) AS days_until_birthday
FROM persons;

-- Convert names to uppercase and lowercase

SELECT name,
    UPPER(name) AS upper_name,
    LOWER(name) AS lower_name
FROM persons;
-- Replace "bad" with "good" in a sentence
SELECT REPLACE('This is a bad example', 'bad', 'good') AS new_sentence;
-- Format roll numbers to 4 digits using LPAD
SELECT 
    person_id,
    LPAD(person_id, 4, '0') AS roll_number
FROM persons;
--Create a function to calculate months old
DELIMITER $$
CREATE FUNCTION months_old(birth DATE) RETURNS INT
DETERMINISTIC
BEGIN
    RETURN TIMESTAMPDIFF(MONTH, birth, CURDATE());
END$$
DELIMITER ;
-- Usage
SELECT name, months_old(birthdate) AS months_old FROM persons;
-- Date calculator: difference in years, months, days
SELECT 
    name,
    TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) AS years_diff,
    TIMESTAMPDIFF(MONTH, birthdate, CURDATE()) AS months_diff,
    DATEDIFF(CURDATE(), birthdate) AS days_diff
FROM persons;
-- String formatter: trim & capitalize first letter
SELECT 
    name,
    CONCAT(UCASE(LEFT(TRIM(name),1)), LCASE(SUBSTRING(TRIM(name),2))) AS formatted_name
FROM persons;
-- Extract first name, last name, initials
SELECT 
    name,
    SUBSTRING_INDEX(name, ' ', 1) AS first_name,
    SUBSTRING_INDEX(name, ' ', -1) AS last_name,
    CONCAT(LEFT(SUBSTRING_INDEX(name, ' ', 1),1), LEFT(SUBSTRING_INDEX(name, ' ', -1),1)) AS initials
FROM persons;
-- Countdown to New Year or any event
SELECT 
    name,
    DATEDIFF(CONCAT(YEAR(CURDATE()) + (CURDATE() > '2025-01-01'), '-01-01'), CURDATE()) AS days_to_new_year
FROM persons;