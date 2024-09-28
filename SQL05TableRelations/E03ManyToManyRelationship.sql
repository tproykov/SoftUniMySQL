USE camp;
CREATE TABLE students (
    student_id INT UNIQUE NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    CONSTRAINT pk_students_student_id
    PRIMARY KEY (student_id)
);
INSERT INTO students (name)
VALUES
    ('Mila'),
    ('Toni'),
    ('Ron');

CREATE TABLE exams (
    exam_id INT UNIQUE NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    CONSTRAINT pk_exams_exam_id
    PRIMARY KEY (exam_id)
);
INSERT INTO exams (exam_id, name)
VALUES
    (101, 'Spring MVC'),
    (102, 'Neo4j'),
    (103, 'Oracle 11g');

CREATE TABLE students_exams (
    student_id INT NOT NULL,
    exam_id INT NOT NULL,
    CONSTRAINT pk_students_exams
    PRIMARY KEY (student_id, exam_id),
    CONSTRAINT fk__students_exams__student_id__students__student_id
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    CONSTRAINT fk_students_exams__exam_id__exams_exam_id
    FOREIGN KEY (exam_id) REFERENCES exams(exam_id)
);
INSERT INTO students_exams (student_id, exam_id)
VALUES
    (1, 101),
    (1, 102),
    (2, 101),
    (3, 103),
    (2, 102),
    (2, 103);