CREATE DATABASE university;
USE university;
CREATE TABLE subjects (
    subject_id INT(11) UNIQUE NOT NULL AUTO_INCREMENT,
    subject_name VARCHAR(50),
    CONSTRAINT pk_subjects_subject_id
    PRIMARY KEY (subject_id)
);
CREATE TABLE majors (
    major_id INT(11) UNIQUE NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    CONSTRAINT pk_majors_major_id
    PRIMARY KEY (major_id)
);
CREATE TABLE students (
    student_id INT(11) UNIQUE NOT NULL AUTO_INCREMENT,
    student_number VARCHAR(12),
    student_name VARCHAR(50),
    major_id INT(11),
    CONSTRAINT pk_students_student_id
    PRIMARY KEY (student_id),
    CONSTRAINT fk__students__major_id__majors__major_id
    FOREIGN KEY (major_id) REFERENCES majors(major_id)
);
CREATE TABLE agenda (
    student_id INT(11) NOT NULL,
    subject_id INT(11) NOT NULL,
    CONSTRAINT pk__agenda_student_id__subject_id
    PRIMARY KEY (student_id, subject_id),
    CONSTRAINT fk__agenda__student_id__students_student_id
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    CONSTRAINT fk__agenda__subject_id__subjects__subject_id
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);
CREATE TABLE payments (
    payment_id INT(11) UNIQUE NOT NULL AUTO_INCREMENT,
    payment_date DATE,
    payment_amount DECIMAL(8, 2),
    student_id INT(11),
    CONSTRAINT pk_payments_payment_id
    PRIMARY KEY (payment_id),
    CONSTRAINT fk__payments__student_id__students_student_id
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);