CREATE TABLE deleted_employees (
    employee_id   INT UNIQUE AUTO_INCREMENT,
    first_name    VARCHAR(50),
    last_name     VARCHAR(50),
    middle_name   VARCHAR(50),
    job_title     VARCHAR(50),
    department_id INT,
    salary        DECIMAL(19, 4),
    CONSTRAINT pk_employee_id_employees
    PRIMARY KEY (employee_id)
);

CREATE TRIGGER tr_deleted_employees
AFTER DELETE ON employees
FOR EACH ROW
    INSERT INTO deleted_employees
        (first_name, last_name, middle_name, job_title, department_id, salary)
        VALUES
            (OLD.first_name, OLD.last_name, OLD.middle_name, OLD.job_title, OLD.department_id, OLD.salary);