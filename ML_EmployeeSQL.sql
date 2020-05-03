CREATE TABLE employees(
	employee_id INT,
	employee_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE);

SELECT * FROM employees;

CREATE TABLE titles(
	title_id VARCHAR,
	title VARCHAR);

SELECT * FROM  titles;

CREATE TABLE departments(
	dept_id VARCHAR,
	dept_name VARCHAR);

SELECT * FROM departments;

CREATE TABLE dept_emp(
	emp_id INT,
	dept_id VARCHAR);

SELECT * FROM  dept_emp;

CREATE TABLE dept_managers(
	dept_id VARCHAR,
	manager_id INT);

SELECT * FROM dept_managers;

CREATE TABLE salaries(
	emp_id INT,
	salary INT);
	
SELECT * FROM salaries;










