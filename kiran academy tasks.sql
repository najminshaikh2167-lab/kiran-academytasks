-- task 1 
CREATE DATABASE company_db;
USE company_db;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    joining_date DATE,
    status VARCHAR(20)
);
DESC employees;
SHOW TABLES;
INSERT INTO employees VALUES
(101, 'Rahul Patil', 'Development', 45000, 'Pune', '2026-01-10', 'Active'),
(102, 'Priya Sharma', 'Testing', 38000, 'Mumbai', '2026-02-15', 'Active'),
(103, 'Amit Joshi', 'Development', 52000, 'Pune', '2025-12-05', 'Active'),
(104, 'Sneha Kulkarni', 'HR', 35000, 'Nashik', '2026-03-20', 'Active'),
(105, 'Rohan Deshmukh', 'Support', 30000, 'Mumbai', '2026-04-01', 'Inactive'),
(106, 'Anjali More', 'Testing', 42000, 'Pune', '2026-05-12', 'Active');
SELECT * FROM employees;
SELECT employee_name FROM employees;
SELECT employee_name, salary FROM employees;
SELECT employee_name, department, city FROM employees;
SELECT * FROM employees WHERE city = 'Pune';
SELECT * FROM employees WHERE city = 'Mumbai';
SELECT * FROM employees WHERE department = 'Development';
SELECT * FROM employees WHERE department = 'Testing';
SELECT * FROM employees WHERE status = 'Active';
SELECT * FROM employees WHERE status = 'Inactive';
SELECT * FROM employees WHERE employee_id = 103;
SELECT * FROM employees WHERE employee_name = 'Priya Sharma';
SELECT * FROM employees WHERE salary > 40000;
SELECT * FROM employees WHERE salary < 40000;
SELECT * FROM employees WHERE salary = 35000;
SELECT * FROM employees WHERE salary >= 42000;
SELECT * FROM employees WHERE city = 'Pune' AND status = 'Active';
SELECT * FROM employees WHERE department = 'Development' AND salary > 45000;
SELECT * FROM employees WHERE city = 'Pune' OR city = 'Mumbai';
UPDATE employees SET salary = 48000 WHERE employee_name = 'Rahul Patil';
UPDATE employees SET status = 'Active' WHERE employee_name = 'Rohan Deshmukh';
UPDATE employees SET city = 'Pune' WHERE employee_name = 'Sneha Kulkarni';
UPDATE employees SET department = 'Development' WHERE employee_name = 'Priya Sharma';
UPDATE employees SET salary = 45000 WHERE employee_id = 106;
UPDATE employees SET salary = salary + 3000 WHERE employee_id = 103;
UPDATE employees SET salary = salary + 2000 WHERE department = 'Testing';
UPDATE employees SET city = 'Mumbai Branch' WHERE city = 'Mumbai';
DELETE FROM employees WHERE employee_id = 105;
DELETE FROM employees WHERE employee_name = 'Rohan Deshmukh';
DELETE FROM employees WHERE status = 'Inactive';
DELETE FROM employees WHERE salary < 30000;
DELETE FROM employees WHERE employee_id = 104;
ALTER TABLE employees ADD email VARCHAR(100);
ALTER TABLE employees ADD mobile VARCHAR(15);
ALTER TABLE employees MODIFY city VARCHAR(100);
ALTER TABLE employees RENAME COLUMN employee_name TO name;
ALTER TABLE employees DROP COLUMN mobile;
ALTER TABLE employees ADD experience INT;
UPDATE employees SET experience = 3 WHERE employee_id = 101;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    location VARCHAR(100)
);
INSERT INTO departments VALUES
(1, 'Development', 'Pune'),
(2, 'Testing', 'Mumbai'),
(3, 'HR', 'Nashik');
SELECT * FROM departments;
UPDATE departments
SET location = 'Nagpur'
WHERE department_id = 3;
DELETE FROM departments
WHERE department_id = 2;
RENAME TABLE departments TO company_departments;
DESC company_departments;
TRUNCATE TABLE company_departments;
DROP TABLE company_departments;
SHOW TABLES;
DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;
USE company_db;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    joining_date DATE,
    status VARCHAR(20)
);
DESC employees;
SHOW TABLES;




-- task 2
INSERT INTO employees
VALUES (101, 'Rahul Patil', 'Development', 45000, 'Pune', '2026-01-10', 'Active');
INSERT INTO employees
VALUES (102, 'Priya Sharma', 'Testing', 38000, 'Mumbai', '2026-02-15', 'Active');
INSERT INTO employees
VALUES (103, 'Amit Joshi', 'Development', 52000, 'Pune', '2025-12-05', 'Active');
INSERT INTO employees
VALUES (104, 'Sneha Kulkarni', 'HR', 35000, 'Nashik', '2026-03-20', 'Active');
INSERT INTO employees
VALUES (105, 'Rohan Deshmukh', 'Support', 30000, 'Mumbai', '2026-04-01', 'Inactive');
INSERT INTO employees
VALUES (106, 'Anjali More', 'Testing', 42000, 'Pune', '2026-05-12', 'Active');
SELECT * FROM employees;
SELECT employee_name FROM employees;
SELECT employee_name, salary FROM employees;
SELECT employee_name, department, city FROM employees;
SELECT * FROM employees
WHERE city = 'Pune';
SELECT * FROM employees
WHERE city = 'Mumbai';
SELECT * FROM employees
WHERE department = 'Development';
SELECT * FROM employees
WHERE department = 'Testing';
SELECT * FROM employees
WHERE status = 'Active';
SELECT * FROM employees
WHERE status = 'Inactive';
SELECT * FROM employees
WHERE employee_id = 103;
SELECT * FROM employees
WHERE employee_name = 'Priya Sharma';
SELECT * FROM employees
WHERE salary > 40000;
SELECT * FROM employees
WHERE salary < 40000;
SELECT * FROM employees
WHERE salary = 35000;
SELECT * FROM employees
WHERE salary >= 42000;
SELECT * FROM employees
WHERE city = 'Pune'
AND status = 'Active';
SELECT * FROM employees
WHERE department = 'Development'
AND salary > 45000;
SELECT * FROM employees
WHERE city = 'Pune'
OR city = 'Mumbai';
UPDATE employees
SET salary = 48000
WHERE employee_name = 'Rahul Patil';
UPDATE employees
SET status = 'Active'
WHERE employee_name = 'Rohan Deshmukh';
UPDATE employees
SET city = 'Pune'
WHERE employee_name = 'Sneha Kulkarni';
UPDATE employees
SET department = 'Development'
WHERE employee_name = 'Priya Sharma';
UPDATE employees
SET salary = 45000
WHERE employee_id = 106;
UPDATE employees
SET salary = salary + 3000
WHERE employee_id = 103;
UPDATE employees
SET salary = salary + 2000
WHERE department = 'Testing';
UPDATE employees
SET city = 'Mumbai Branch'
WHERE city = 'Mumbai';
DELETE FROM employees
WHERE employee_id = 105;
DELETE FROM employees
WHERE employee_name = 'Rohan Deshmukh';
DELETE FROM employees
WHERE status = 'Inactive';
DELETE FROM employees
WHERE salary < 30000;
DELETE FROM employees
WHERE employee_id = 104;
ALTER TABLE employees
ADD email VARCHAR(100);
ALTER TABLE employees
ADD mobile VARCHAR(15);
ALTER TABLE employees
MODIFY city VARCHAR(100);
ALTER TABLE employees
RENAME COLUMN employee_name TO name;
ALTER TABLE employees
DROP COLUMN mobile;
ALTER TABLE employees
ADD experience INT;
UPDATE employees
SET experience = 3
WHERE employee_id = 101;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    location VARCHAR(100)
);
INSERT INTO departments
VALUES (1, 'Development', 'Pune');
INSERT INTO departments
VALUES (2, 'Testing', 'Mumbai');
INSERT INTO departments
VALUES (3, 'HR', 'Nashik');
SELECT * FROM departments;
UPDATE departments
SET location = 'Nagpur'
WHERE department_id = 3;
DELETE FROM departments
WHERE department_id = 2;
RENAME TABLE departments TO company_departments;
DESC company_departments;
TRUNCATE TABLE company_departments;
DROP TABLE company_departments;
SHOW TABLES;






-- task 3
CREATE DATABASE ecommerce_db;
USE ecommerce_db;
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    brand VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT,
    city VARCHAR(50),
    status VARCHAR(20)
);
DESC products;
SHOW TABLES;
INSERT INTO products VALUES
(201, 'Galaxy M55', 'Mobile', 'Samsung', 32000, 15, 'Pune', 'Available');
INSERT INTO products VALUES
(202, 'iPhone 15', 'Mobile', 'Apple', 65000, 8, 'Mumbai', 'Available');
INSERT INTO products VALUES
(203, 'Moto Edge 50', 'Mobile', 'Motorola', 28000, 20, 'Pune', 'Available');
INSERT INTO products VALUES
(204, 'Inspiron 15', 'Laptop', 'Dell', 58000, 6, 'Nashik', 'Available');
INSERT INTO products VALUES
(205, 'IdeaPad Slim 3', 'Laptop', 'Lenovo', 45000, 12, 'Mumbai', 'Available');
INSERT INTO products VALUES
(206, 'Galaxy Watch 6', 'Watch', 'Samsung', 22000, 4, 'Pune', 'Out of Stock');
INSERT INTO products VALUES
(207, 'Apple Watch SE', 'Watch', 'Apple', 30000, 10, 'Mumbai', 'Available');
INSERT INTO products VALUES
(208, 'Redmi Pad', 'Tablet', 'Xiaomi', 24000, 18, 'Pune', 'Available');
INSERT INTO products VALUES
(209, 'OnePlus Pad', 'Tablet', 'OnePlus', 35000, 5, 'Nashik', 'Available');
INSERT INTO products VALUES
(210, 'Bluetooth Speaker', 'Accessories', 'JBL', 7000, 25, 'Mumbai', 'Available');
SELECT * FROM products;
SELECT product_name FROM products;
SELECT product_name, price FROM products;
SELECT product_name, category, brand, price FROM products;
SELECT * FROM products WHERE city = 'Pune';
SELECT * FROM products WHERE city = 'Mumbai';
SELECT * FROM products WHERE category = 'Mobile';
SELECT * FROM products WHERE category = 'Laptop';
SELECT * FROM products WHERE price > 30000;
SELECT * FROM products WHERE price < 30000;
SELECT * FROM products WHERE price = 35000;
SELECT * FROM products WHERE price >= 45000;
SELECT * FROM products WHERE price <= 30000;
SELECT * FROM products WHERE quantity > 10;
SELECT * FROM products WHERE quantity < 10;
SELECT * FROM products WHERE city = 'Pune' AND category = 'Mobile';
SELECT * FROM products WHERE city = 'Mumbai' AND status = 'Available';
SELECT * FROM products WHERE price > 30000 AND quantity > 5;
SELECT * FROM products WHERE price >= 30000 AND price <= 60000;
SELECT * FROM products WHERE city = 'Pune' OR city = 'Mumbai';
SELECT * FROM products WHERE category = 'Mobile' OR category = 'Laptop';
SELECT * FROM products WHERE quantity < 10 OR price > 50000;
SELECT * FROM products WHERE category = 'Mobile' AND price > 30000;
SELECT * FROM products WHERE brand = 'Samsung' OR brand = 'Apple';
SELECT * FROM products
WHERE city = 'Pune'
AND status = 'Available'
AND quantity > 10;
SELECT * FROM products WHERE price BETWEEN 25000 AND 50000;
SELECT * FROM products WHERE quantity BETWEEN 5 AND 15;
SELECT * FROM products
WHERE category IN ('Mobile', 'Laptop', 'Tablet');
SELECT * FROM products
WHERE city IN ('Pune', 'Mumbai');
SELECT * FROM products WHERE brand <> 'Samsung';
SELECT * FROM products WHERE status <> 'Out of Stock';
SELECT * FROM products WHERE price <> 30000;
SELECT * FROM products WHERE product_name LIKE 'Galaxy%';
SELECT * FROM products WHERE product_name LIKE '%Pad%';
SELECT * FROM products
WHERE category = 'Mobile'
AND (price > 30000 OR quantity > 15);
UPDATE products
SET price = 34000
WHERE product_id = 201;
UPDATE products
SET quantity = 12
WHERE product_id = 202;
UPDATE products
SET status = 'Available'
WHERE product_id = 206;
UPDATE products
SET price = price + 2000
WHERE category = 'Mobile';
UPDATE products
SET quantity = quantity + 5
WHERE city = 'Pune';
UPDATE products
SET status = 'Out of Stock'
WHERE quantity < 5;
DELETE FROM products
WHERE product_id = 210;
DELETE FROM products
WHERE price < 8000;
DELETE FROM products
WHERE status = 'Out of Stock'
AND quantity < 5;
DELETE FROM products
WHERE category = 'Tablet'
AND price > 30000;
SELECT * FROM products; 
SELECT * FROM employees
WHERE salary > 40000;
SELECT * FROM employees
WHERE city = 'Pune' AND salary > 45000;
SELECT * FROM employees
WHERE department = 'HR' OR department = 'Testing';









-- task4
SELECT * FROM employees
WHERE city = 'Pune';

SELECT * FROM employees
WHERE city = 'Mumbai';
SELECT * FROM employees
WHERE department = 'IT';
SELECT * FROM employees
WHERE department = 'HR';
SELECT * FROM employees
WHERE department = 'Sales';
SELECT * FROM employees
WHERE status = 'Active';
SELECT * FROM employees
WHERE status = 'Inactive';
SELECT * FROM employees
WHERE employee_id = 103;
SELECT * FROM employees
WHERE employee_name = 'Priya Sharma';
SELECT * FROM employees
WHERE salary = 35000;
SELECT * FROM employees
WHERE city != 'Pune';
SELECT * FROM employees
WHERE department <> 'Testing';
SELECT * FROM employees
WHERE salary > 40000;
SELECT * FROM employees
WHERE salary < 35000;
SELECT * FROM employees
WHERE salary >= 50000;
SELECT * FROM employees
WHERE salary <= 30000;
SELECT * FROM employees
WHERE joining_date > '2025-01-01';
SELECT * FROM employees
WHERE joining_date <= '2024-12-31';
SELECT * FROM employees
WHERE employee_id > 110;
SELECT employee_name, joining_date
FROM employees
WHERE joining_date >= '2026-01-01';
SELECT * FROM employees
WHERE city = 'Pune' AND status = 'Active';
SELECT * FROM employees
WHERE department = 'IT' AND salary > 50000;
SELECT * FROM employees
WHERE city = 'Mumbai' AND status = 'Inactive';
SELECT * FROM employees
WHERE department = 'Sales' AND city = 'Pune' AND salary >= 42000;
SELECT * FROM employee
WHERE department = 'HR' AND joining_date > '2025-06-01';
SELECT * FROM employee
WHERE status = 'Active' AND salary >= 40000 AND salary <= 70000;
SELECT * FROM employees
WHERE city = 'Mumbai' AND department = 'Testing' AND salary > 38000;
SELECT * FROM employee
WHERE status = 'Active' AND joining_date >= '2026-01-01' AND salary > 45000;
SELECT * FROM employees
WHERE city = 'Pune' OR city = 'Mumbai';
SELECT * FROM employees
WHERE department = 'IT' OR department = 'HR';
SELECT * FROM employees
WHERE salary < 32000 OR salary > 60000;
SELECT * FROM employees
WHERE city = 'Nashik' OR salary > 55000;
SELECT * FROM employees
WHERE NOT department = 'HR';
SELECT * FROM employees
WHERE NOT status = 'Inactive';
SELECT * FROM employees
WHERE (city = 'Pune' OR city = 'Mumbai') AND status = 'Active';
SELECT * FROM employees
WHERE city != 'Pune' AND salary > 40000;
SELECT * FROM employees
WHERE salary BETWEEN 35000 AND 55000;
SELECT * FROM employees
WHERE salary NOT BETWEEN 40000 AND 65000;
SELECT * FROM employees
WHERE joining_date BETWEEN '2025-01-01' AND '2025-12-31';
SELECT * FROM employees
WHERE employee_id BETWEEN 105 AND 115;
SELECT * FROM employees
WHERE department IN ('IT', 'HR', 'Sales');
SELECT * FROM employees
WHERE city IN ('Pune', 'Mumbai', 'Nagpur');
SELECT * FROM employees
WHERE department NOT IN ('Testing', 'Support');
SELECT * FROM employees
WHERE city NOT IN ('Mumbai', 'Nashik');
SELECT * FROM employees
WHERE employee_id IN (101, 105, 110, 115, 120);
SELECT * FROM employees
WHERE department IN ('IT', 'Sales')
AND salary BETWEEN 45000 AND 75000;
SELECT * FROM employees
WHERE employee_name LIKE 'A%';
SELECT * FROM employees
WHERE employee_name LIKE 'R%';
SELECT * FROM employees
WHERE employee_name LIKE '%a';
SELECT * FROM employees
WHERE employee_name LIKE '%sh%';
SELECT * FROM employees
WHERE employee_name LIKE 'P%a';
SELECT * FROM employees
WHERE employee_name LIKE '_____';
SELECT * FROM employees
WHERE employee_name LIKE '_a%';
SELECT * FROM employees
WHERE employee_name NOT LIKE 'R%';
SELECT * FROM employees
WHERE email IS NULL;
SELECT * FROM employees
WHERE email IS NOT NULL;
SELECT * FROM employees
WHERE city = 'Pune' AND email IS NULL;
SELECT * FROM employees
WHERE status = 'Active' AND email IS NOT NULL AND salary > 40000;
SELECT * FROM employees
WHERE status = 'Active'
AND city IN ('Pune', 'Mumbai')
AND department IN ('IT', 'Sales')
AND salary BETWEEN 40000 AND 70000
AND joining_date > '2025-01-01';
SELECT * FROM employees
WHERE (employee_name LIKE 'S%' OR employee_name LIKE 'R%')
AND email IS NOT NULL
AND status = 'Active'
AND city IN ('Pune', 'Nashik');






-- task 5
USE company_db;
SELECT * FROM employees WHERE city = 'Pune';
SELECT * FROM employees WHERE city = 'Mumbai';
SELECT * FROM employees WHERE department = 'IT';
SELECT * FROM employees WHERE department = 'HR';
SELECT * FROM employees WHERE department = 'Sales';
SELECT * FROM employees WHERE status = 'Active';
SELECT * FROM employees WHERE status = 'Inactive';
SELECT * FROM employees WHERE employee_id = 103;
SELECT * FROM employees WHERE employee_name = 'Priya Sharma';
SELECT * FROM employees WHERE salary = 35000;
SELECT * FROM employees WHERE city != 'Pune';
SELECT * FROM employees WHERE department <> 'Testing';
SELECT * FROM employees WHERE salary > 40000;
SELECT * FROM employees WHERE salary < 35000;
SELECT * FROM employees WHERE salary >= 50000;
SELECT * FROM employees WHERE salary <= 30000;
SELECT * FROM employees WHERE joining_date > '2025-01-01';
SELECT * FROM employees WHERE joining_date <= '2024-12-31';
SELECT * FROM employees WHERE employee_id > 110;
SELECT employee_name, joining_date FROM employees WHERE joining_date >= '2026-01-01';
SELECT * FROM employees WHERE city = 'Pune' AND status = 'Active';
SELECT * FROM employees WHERE department = 'IT' AND salary > 50000;
SELECT * FROM employees WHERE city = 'Mumbai' AND status = 'Inactive';
SELECT * FROM employees WHERE department = 'Sales' AND city = 'Pune' AND salary >= 42000;
SELECT * FROM employees WHERE department = 'HR' AND joining_date > '2025-06-01';
SELECT * FROM employees WHERE status = 'Active' AND salary >= 40000 AND salary <= 70000;
SELECT * FROM employees WHERE city = 'Mumbai' AND department = 'Testing' AND salary > 38000;
SELECT * FROM employees WHERE status = 'Active' AND joining_date >= '2026-01-01' AND salary > 45000;
SELECT * FROM employees WHERE city = 'Pune' OR city = 'Mumbai';
SELECT * FROM employees WHERE department = 'IT' OR department = 'HR';
SELECT * FROM employees WHERE salary < 32000 OR salary > 60000;
SELECT * FROM employees WHERE city = 'Nashik' OR salary > 55000;
SELECT * FROM employees WHERE NOT department = 'HR';
SELECT * FROM employees WHERE NOT status = 'Inactive';
SELECT * FROM employees WHERE (city = 'Pune' OR city = 'Mumbai') AND status = 'Active';
SELECT * FROM employees WHERE city != 'Pune' AND salary > 40000;
SELECT * FROM employees WHERE salary BETWEEN 35000 AND 55000;
SELECT * FROM employees WHERE salary NOT BETWEEN 40000 AND 65000;
SELECT * FROM employees WHERE joining_date BETWEEN '2025-01-01' AND '2025-12-31';
SELECT * FROM employees WHERE employee_id BETWEEN 105 AND 115;
SELECT * FROM employees WHERE department IN ('IT', 'HR', 'Sales');
SELECT * FROM employees WHERE city IN ('Pune', 'Mumbai', 'Nagpur');
SELECT * FROM employees WHERE department NOT IN ('Testing', 'Support');
SELECT * FROM employees WHERE city NOT IN ('Mumbai', 'Nashik');
SELECT * FROM employees WHERE employee_id IN (101, 105, 110, 115, 120);
SELECT * FROM employees WHERE department IN ('IT', 'Sales') AND salary BETWEEN 45000 AND 75000;
SELECT * FROM employees WHERE employee_name LIKE 'A%';
SELECT * FROM employees WHERE employee_name LIKE 'R%';
SELECT * FROM employees WHERE employee_name LIKE '%a';
SELECT * FROM employees WHERE employee_name LIKE '%sh%';
SELECT * FROM employees WHERE employee_name LIKE 'P%a';
SELECT * FROM employees WHERE employee_name LIKE '_____';
SELECT * FROM employees WHERE employee_name LIKE '_a%';
SELECT * FROM employees WHERE employee_name NOT LIKE 'R%';
SELECT * FROM employees WHERE email IS NULL;
SELECT * FROM employees WHERE email IS NOT NULL;
SELECT * FROM employees WHERE city = 'Pune' AND email IS NULL;
SELECT * FROM employees WHERE status = 'Active' AND email IS NOT NULL AND salary > 40000;
SELECT * FROM employees
WHERE status = 'Active'
AND city IN ('Pune', 'Mumbai')
AND department IN ('IT', 'Sales')
AND salary BETWEEN 40000 AND 70000
AND joining_date > '2025-01-01';
SELECT * FROM employees
WHERE (employee_name LIKE 'S%' OR employee_name LIKE 'R%')
AND email IS NOT NULL
AND status = 'Active'
AND city IN ('Pune', 'Nashik');






-- task 6
CREATE DATABASE quickbite;
USE quickbite;
CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(100),
    cuisine VARCHAR(50),
    city VARCHAR(50),
    rating DOUBLE,
    avg_order_value DOUBLE,
    orders_count INT,
    delivery_fee DOUBLE,
    est_delivery_time INT,
    owner_name VARCHAR(100),
    brand VARCHAR(100)
);
SELECT * FROM restaurants WHERE rating > 4.5;
SELECT * FROM restaurants WHERE avg_order_value < 300;
SELECT * FROM restaurants WHERE city = 'Pune';
SELECT * FROM restaurants WHERE orders_count > 20000;
SELECT * FROM restaurants WHERE est_delivery_time > 40;
SELECT * FROM restaurants WHERE rating BETWEEN 4.2 AND 4.7;
SELECT * FROM restaurants
WHERE cuisine IN ('South Indian', 'Italian', 'Biryani');
SELECT * FROM restaurants
WHERE owner_name LIKE '%Patil%';
SELECT * FROM restaurants
WHERE brand = restaurant_name;
SELECT * FROM restaurants
WHERE delivery_fee < 30;
SELECT * FROM restaurants
ORDER BY orders_count DESC
LIMIT 5;
SELECT * FROM restaurants
ORDER BY avg_order_value ASC
LIMIT 5;
SELECT * FROM restaurants
ORDER BY rating DESC;
SELECT DISTINCT cuisine FROM restaurants;
SELECT
    restaurant_name AS Restaurant_Name,
    rating AS Customer_Rating
FROM restaurants;
SELECT restaurant_name, owner_name, brand
FROM restaurants;
SELECT * FROM restaurants
ORDER BY city ASC, rating DESC;
SELECT * FROM restaurants
WHERE orders_count > 10000
ORDER BY rating DESC
LIMIT 5;
SELECT * FROM restaurants
WHERE city = 'Pune'
ORDER BY orders_count DESC
LIMIT 3;
SELECT * FROM restaurants
ORDER BY delivery_fee DESC
LIMIT 5;
SELECT * FROM restaurants
WHERE restaurant_name LIKE 'S%';
SELECT * FROM restaurants
WHERE restaurant_name LIKE '%House';
SELECT * FROM restaurants
WHERE restaurant_name LIKE '%Cafe%';
SELECT * FROM restaurants
WHERE cuisine LIKE '%Indian%';
SELECT * FROM restaurants
WHERE restaurant_name LIKE '_____';
SELECT * FROM restaurants
WHERE owner_name LIKE '%Raj%';
SELECT * FROM restaurants
WHERE brand LIKE '%Foods%';
SELECT * FROM restaurants
WHERE city LIKE 'P%';
SELECT * FROM restaurants
WHERE avg_order_value > 400
AND rating > 4.5;
SELECT * FROM restaurants
WHERE orders_count > 20000
OR rating > 4.7;
SELECT * FROM restaurants
WHERE city NOT IN ('Pune');
SELECT * FROM restaurants
WHERE est_delivery_time BETWEEN 25 AND 40;
SELECT * FROM restaurants
WHERE avg_order_value BETWEEN 300 AND 600;
SELECT * FROM restaurants
WHERE city IN ('Pune', 'Mumbai');
SELECT * FROM restaurants
WHERE cuisine = 'Fast Food'
AND orders_count > 20000;
SELECT * FROM restaurants
WHERE rating > 4.5
AND delivery_fee < 40;
SELECT * FROM restaurants
WHERE city = 'Bengaluru'
AND orders_count > 10000;
SELECT * FROM restaurants
WHERE owner_name <> 'Rahul Jain';
SELECT * FROM restaurants
WHERE rating > 4.5
AND orders_count < 10000;
SELECT * FROM restaurants
WHERE avg_order_value < 300
AND orders_count > 20000;
SELECT * FROM restaurants
WHERE est_delivery_time < 30
AND rating > 4.3;
SELECT * FROM restaurants
WHERE city = 'Mumbai'
ORDER BY orders_count DESC
LIMIT 3;
SELECT * FROM restaurants
WHERE avg_order_value > (
    SELECT AVG(avg_order_value)
    FROM restaurants
);
SELECT * FROM restaurants
WHERE city = 'Pune'
ORDER BY orders_count DESC;
SELECT
    restaurant_name,
    city,
    rating,
    avg_order_value
FROM restaurants
WHERE cuisine = 'South Indian';
SELECT * FROM restaurants
WHERE avg_order_value > 500
AND rating >= 4.5;
SELECT
    restaurant_name,
    cuisine,
    city,
    rating,
    avg_order_value,
    orders_count,
    delivery_fee,
    owner_name,
    brand
FROM restaurants
WHERE rating > 4.4
AND orders_count > 10000
AND avg_order_value BETWEEN 300 AND 700
ORDER BY orders_count DESC
LIMIT 5;