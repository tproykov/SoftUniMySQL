USE minions;
CREATE TABLE people (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    picture BLOB,
    height DECIMAL(3, 2),
    weight DECIMAL(5, 2),
    gender CHAR(1) NOT NULL,
    birthdate DATE NOT NULL,
    biography TEXT
);
INSERT INTO people (name, picture, height, weight, gender, birthdate, biography)
    VALUES
        ('Sam', NULL, 1.70, 60.5, 'm', '2000-01-02', NULL),
        ('Lisa', NULL, 1.68, 55.9, 'f', '2001-03-03', NULL),
        ('Michelle', NULL, 1.50, 44.3, 'f', '1999-04-04', NULL),
        ('Pete', NULL, 1.80, 77.9, 'm','1966-09-09', NULL),
        ('Jesus', NULL, 2.00, 100.0, 'm', '1998-02-02', NULL);