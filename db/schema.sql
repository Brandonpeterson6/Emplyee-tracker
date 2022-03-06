DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees;

USE employees;

CREATE TABLE department (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL, FOREIGN KEY (department_id) REFERENCES department(id)
);
CREATE TABLE employee (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL, FOREIGN KEY (role_id) REFERENCES role(id),
    manager_id INT, FOREIGN KEY (manager_id) REFERENCES employee(id)
);

use employees;

INSERT INTO department
    (name)
VALUES
    ('Business'),
    ('Technical'),
    ('Human Resources'),
    ('Sales');
INSERT INTO role
    (title, salary, department_id)
VALUES
    ('Sales Lead', 100000, 4),
    ('Salesperson', 80000, 4),
    ('Full Stack Web Developer', 150000, 2),
    ('Front End Developer', 120000, 2),
    ('Human Resource Manager', 160000, 3),
    ('Benefits Administrator', 125000, 3),
    ('Accountant', 250000, 1),
    ('Lawyer', 190000, 1);
INSERT INTO employee
    (first_name, last_name, role_id, manager_id)
VALUES
    ('Brandon', 'Peterson', 1, NULL),
    ('Mike', 'Chan', 2, 1),
    ('Ashley', 'Rodriguez', 3, NULL),
    ('Kevin', 'Tupik', 4, 3),
    ('Kunal', 'Singh', 5, NULL),
    ('Malia', 'Brown', 6, 5),
    ('Sarah', 'Lourd', 7, NULL),
    ('Tom', 'Allen', 8, 7);