CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10) NOT NULL
);

CREATE TABLE cars (
    id INT PRIMARY KEY AUTO_INCREMENT,
    make VARCHAR(20) NOT NULL,
    model VARCHAR(20),
    year INT NOT NULL,
    mileage INT,
    `condition` CHAR(1) NOT NULL,
    category_id INT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

CREATE TABLE addresses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE clients (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20) NOT NULL
);

CREATE TABLE courses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    from_address_id INT NOT NULL,
    `start` DATETIME NOT NULL,
    car_id INT NOT NULL,
    client_id INT NOT NULL,
    bill DECIMAL(10, 2),
    FOREIGN KEY (from_address_id) REFERENCES addresses(id),
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (client_id) REFERENCES clients(id)
);

CREATE TABLE drivers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    age INT NOT NULL,
    rating FLOAT
);

CREATE TABLE cars_drivers (
    car_id INT,
    driver_id INT,
    PRIMARY KEY (car_id, driver_id),
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (driver_id) REFERENCES drivers(id)
);