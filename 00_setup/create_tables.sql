SET SERVEROUTPUT ON;

CREATE TABLE departments (
    department_id   NUMBER PRIMARY KEY,
    department_name VARCHAR2(100) NOT NULL UNIQUE
);

CREATE TABLE employees (
    employee_id   NUMBER PRIMARY KEY,
    first_name    VARCHAR2(50) NOT NULL,
    last_name     VARCHAR2(50) NOT NULL,
    salary        NUMBER(12,2) NOT NULL CHECK (salary >= 0),
    hire_date     DATE NOT NULL,
    department_id NUMBER,
    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

INSERT INTO departments VALUES (10, 'Finance');
INSERT INTO departments VALUES (20, 'Information Technology');
INSERT INTO departments VALUES (30, 'Human Resources');
INSERT INTO departments VALUES (40, 'Sales');

INSERT INTO employees VALUES (101, 'Alice', 'Uwase', 450000, DATE '2021-02-15', 10);
INSERT INTO employees VALUES (102, 'Eric', 'Mugisha', 850000, DATE '2019-06-01', 20);
INSERT INTO employees VALUES (103, 'Grace', 'Ineza', 1200000, DATE '2017-09-20', 30);
INSERT INTO employees VALUES (104, 'David', 'Niyonsenga', 300000, DATE '2024-01-10', 40);
INSERT INTO employees VALUES (105, 'Aline', 'Mutoni', 650000, DATE '2022-04-05', NULL);

COMMIT;

PROMPT Setup completed successfully.
