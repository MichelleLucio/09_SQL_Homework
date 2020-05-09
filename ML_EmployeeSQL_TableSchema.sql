--drop tables if already exists
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_managers;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments(
	dept_id VARCHAR(10) PRIMARY KEY NOT NULL,
	dept_name VARCHAR NOT NULL);

SELECT * FROM departments;

CREATE TABLE titles(
	title_id VARCHAR(10) PRIMARY KEY NOT NULL,
	title VARCHAR NOT NULL);

SELECT * FROM  titles;

CREATE TABLE employees(
	employee_id INT PRIMARY KEY NOT NULL,
	employee_title_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (employee_title_id) REFERENCES titles(title_id),
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR(5),
	hire_date DATE NOT NULL);

SELECT * FROM employees;

DROP TABLE salaries;

CREATE TABLE dept_emp(
	emp_id INT NOT NULL,
	FOREIGN KEY (emp_id) REFERENCES employees(employee_id),
	dept_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (dept_id) REFERENCES departments(dept_id),
	PRIMARY KEY (emp_id, dept_id));

SELECT * FROM  dept_emp;

CREATE TABLE dept_managers(
	dept_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (dept_id) REFERENCES departments(dept_id),
	manager_id INT NOT NULL,
	FOREIGN KEY (manager_id) REFERENCES employees(employee_id), 
	PRIMARY KEY (dept_id, manager_id));

SELECT * FROM dept_managers;

CREATE TABLE salaries(
	emp_id INT NOT NULL PRIMARY KEY,
	FOREIGN KEY (emp_id) REFERENCES employees(employee_id),
	salary INT NOT NULL);
	
SELECT * FROM salaries;










