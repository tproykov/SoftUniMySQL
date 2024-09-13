CREATE DATABASE soft_uni;
USE soft_uni;
CREATE TABLE towns (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL
);
CREATE TABLE addresses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    address_text VARCHAR(100) NOT NULL,
    town_id INT
);
CREATE TABLE departments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL
);
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    middle_name VARCHAR(30),
    last_name VARCHAR(30) NOT NULL,
    job_title VARCHAR(50) NOT NULL,
    department_id INT,
    hire_date DATE,
    salary INT,
    address_id INT
);