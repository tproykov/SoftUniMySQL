USE camp;
CREATE TABLE teachers (
    teacher_id INT UNIQUE NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    manager_id INT,
    CONSTRAINT pk_teachers_teacher_id
    PRIMARY KEY (teacher_id),
    CONSTRAINT fk__teachers__teacher_id__manager_id
    FOREIGN KEY (manager_id) REFERENCES teachers(teacher_id)
);
-- insert the rows in a specific order so that any referenced teacher_id exists
-- before it is used as a manager_id.
INSERT INTO teachers (teacher_id, name, manager_id)
VALUES
    (101, 'John', NULL),
    (105, 'Mark', 101),
    (106, 'Greta', 101),
    (102, 'Maya', 106),
    (103, 'Silvia', 106),
    (104, 'Ted', 105);