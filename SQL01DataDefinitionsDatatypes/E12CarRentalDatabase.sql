CREATE DATABASE car_rental;
USE car_rental;
CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    category VARCHAR(30) NOT NULL,
    daily_rate DECIMAL(7, 2) NOT NULL,
    weekly_rate DECIMAL(7, 2),
    monthly_rate DECIMAL(7, 2),
    weekend_rate DECIMAL(7, 2)
);

INSERT INTO categories (category, daily_rate, weekly_rate, monthly_rate, weekend_rate) VALUES
    ('economy', 12.50, 71.00, 246.00, 15.20),
    ('comfort', 16.40, 92.60, 312.88, 18.50),
    ('van', 19.99, 121.00, 440.55, 23.33);

CREATE TABLE cars (
    id INT PRIMARY KEY AUTO_INCREMENT,
    plate_number VARCHAR(10) NOT NULL,
    make VARCHAR(30) NOT NULL,
    model VARCHAR(50) NOT NULL,
    car_year YEAR NOT NULL,
    category_id INT,
    doors TINYINT,
    pictures MEDIUMBLOB,
    car_condition VARCHAR(10),
    available BOOLEAN
);
INSERT INTO cars (plate_number, make, model, car_year, category_id, doors, pictures, car_condition, available) VALUES
    ('WJ15VVX', 'Toyota', 'Yaris', '2015', 2, 5, NULL, 'good', TRUE),
    ('NM15KKL', 'Skoda', 'Favorit', '1999', 1, 3, NULL, 'used', TRUE),
    ('LP24ZAM', 'Ford', 'Van', '2010', 3, 2, NULL, 'new', FALSE);

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    title VARCHAR(10),
    notes VARCHAR(255)
);
INSERT INTO employees (first_name, last_name, title, notes) VALUES
    ('Ivan', 'Ivanov', 'Mr.', NULL),
    ('Petko', 'Danailov', 'Mr.', NULL),
    ('Milen', 'Kirchev', 'Dr.', 'notes on employee');

CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    driver_license_number VARCHAR(30) NOT NULL,
    full_name VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    city VARCHAR(50),
    zip_code VARCHAR(10) NOT NULL,
    notes VARCHAR(255)
);
INSERT INTO customers (driver_license_number, full_name, address, city, zip_code, notes) VALUES
    ('AF897564', 'David Mitchell', '27 York Road', 'Stamford', 'PE9 1LL', NULL),
    ('BM895555', 'Emma Stone', '25 Isca Road', 'Lodon', 'SX9 5ML', NULL),
    ('LL897000', 'Lee Mac', '27 Broadway Road', 'Exeter', 'EX9 5LF', NULL);

CREATE TABLE rental_orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    customer_id INT NOT NULL,
    car_id INT NOT NULL,
    car_condition VARCHAR(10),
    tank_level INT NOT NULL,
    kilometrage_start INT NOT NULL,
    kilometrage_end INT NOT NULL,
    total_kilometrage INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_days INT NOT NULL,
    rate_applied DECIMAL(7, 2),
    tax_rate DECIMAL(7, 2),
    order_status VARCHAR(10),
    notes VARCHAR(255)
);
INSERT INTO rental_orders (employee_id, customer_id, car_id, car_condition, tank_level, kilometrage_start,
                           kilometrage_end, total_kilometrage, start_date, end_date, total_days, rate_applied, tax_rate, order_status, notes) VALUES
    (2, 3, 1, 'good', 27, 78555, 79555, 1000, current_date, current_date, 5, 4.1, 0.20, 'processing', NULL),
    (1, 2, 2, 'used', 50, 100125, 100235, 110, current_date, current_date, 3, 0.0, 0.20, 'complete', NULL),
    (3, 1, 1, 'good', 35, 79555, 79655, 100, current_date, current_date, 1, 5.2, 0.20, 'pending', 'note');