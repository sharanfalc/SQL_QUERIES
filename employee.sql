CREATE TABLE Employees (
    emp_id INT,
    e_name VARCHAR(50),
    dept_id INT
);

CREATE TABLE Departments (
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO Employees (emp_id, e_name, dept_id) VALUES
(1, 'Ravi', 101),
(2, 'Ravi', 101),
(3, 'Ravi', 103),
(4, 'Aryan', 103),
(5, 'Priya', 102),
(6, 'Manish', NULL);

INSERT INTO Departments (dept_id, dept_name) VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance'),
(104, 'Marketing');

SELECT e.emp_id, e.e_name, d.dept_name
FROM Employees e
INNER JOIN Departments d ON e.dept_id = d.dept_id
WHERE d.dept_name = 'IT';

SELECT d.dept_id, d.dept_name
FROM Departments d
LEFT JOIN Employees e ON e.dept_id = d.dept_id
WHERE e.emp_id IS NULL;

SELECT e.e_name, d.dept_name
FROM Employees e
CROSS JOIN Departments d;

SELECT e.e_name, d.dept_name
FROM Employees e
FULL OUTER JOIN Departments d
ON e.dept_id = d.dept_id;

SELECT e.emp_id, e.e_name
FROM Employees e
LEFT JOIN Departments d ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;