USE camp;
CREATE TABLE people (
    person_id INT UNIQUE NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    salary DECIMAL(10, 2) DEFAULT 0,
    passport_id INT UNIQUE
);
INSERT INTO people (first_name, salary, passport_id)
VALUES
    ('Roberto', 43300.00, 102),
    ('Tom', 56100.00, 103),
    ('Yana', 60200.00, 101);

CREATE TABLE passports (
    passport_id INT PRIMARY KEY AUTO_INCREMENT,
    passport_number VARCHAR(10) UNIQUE NOT NULL
);
INSERT INTO passports (passport_id, passport_number)
VALUES
    (101, 'N34FG21B'),
    (102, 'K65LO4R7'),
    (103, 'ZE657QP2');

ALTER TABLE people
ADD CONSTRAINT pk_people_id
PRIMARY KEY (person_id);

ALTER TABLE people
ADD CONSTRAINT fk__people_passport_id__passports__passport_id
FOREIGN KEY (passport_id) REFERENCES passports(passport_id);