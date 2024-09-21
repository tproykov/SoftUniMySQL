USE camp;
CREATE TABLE mountains (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30)
);
CREATE TABLE peaks (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    mountain_id INT NOT NULL,
    CONSTRAINT pk__mountain_id__peaks__mountains__id
    FOREIGN KEY (mountain_id)
    REFERENCES mountains(id)
);