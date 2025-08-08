create database hr4;
use hr4;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    Name_f VARCHAR(50),
    dept VARCHAR(50),
    salary DECIMAL(10, 2),
    Ranking VARCHAR(20),
    age INT,
    address VARCHAR(100),
    city VARCHAR(50)
);
INSERT INTO employees (emp_id, Name_f, dept, salary, Ranking, age, address, city)
VALUES 
(1, 'John Mwangi', 'Engineering', 70000.00, 'Senior Engineer', 30, '123 Maple St.', 'New York'),
(2, 'Jane Smith', 'Marketing', 55000.00, 'Marketing Manager', 28, '456 Oak St.', 'Chicago'),
(3, 'Robert Brown', 'Sales', 62000.00, 'Sales Executive', 35, '789 Pine St.', 'Los Angeles'),
(4, 'Emily Davis', 'HR', 50000.00, 'HR Specialist', 32, '321 Cedar St.', 'Houston'),
(5, 'Michael Johnson', 'Engineering', 80000.00, 'Lead Engineer', 40, '654 Elm St.', 'San Francisco'),
(6, 'Chris White', 'Finance', 75000.00, 'Financial Analyst', 29, '987 Birch St.', 'Boston');

select * from employees;
INSERT INTO employees (emp_id, Name_f, dept, salary, Ranking, age, address, city)
VALUES 
(8, 'Mary Anne', 'Marketting', 70000.00, 'Blogger', 24, '123 Maple St.', 'New York');

select * from employees;

INSERT INTO employees (emp_id, Name_f, dept, salary, Ranking, age, address, city)
VALUES 
(9, 'ANNA', 'Marketting', 20000.00, 'Public Relations', 24, '123 Maple St.', 'California'),
(10, 'Patric Nim', 'Engineering', 1200000.00, 'Network', 24, '123 Maple St.', 'New York'),
(11, 'Mary Anne', 'Enginnering', 60000.00, 'Automation', 24, '123 Maple St.', 'Boston');

select * from employees;


update employees
set Name_f = 'Mark War'
where dept = 'Engineering' and age =24;

select * from employees;

update employees
set salary = 300000
where age = 30;
select * from employees;

delete from employees
WHERE emp_id = 8;

select * from employees
where salary > 60000;

select  max(salary) as highest_salary
from employees

update employees
set salary = 500000
where Ranking = 'Network' and age = 24
select * from employees;