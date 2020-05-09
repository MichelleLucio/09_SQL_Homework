--Once you have a complete database, do the following:
--List the following details of each employee: employee number, 
	--last name, first name, sex, and salary.
SELECT e.employee_id, e.last_name, e.first_name, e.gender, s.salary
FROM employees AS e
JOIN salaries AS s
ON e.employee_id = s.emp_id;


--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


--List the manager of each department with the following information: 
	--department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_id, d.dept_name, e.employee_id, e.last_name, e.first_name
FROM employees AS e
JOIN dept_managers AS dm
ON e.employee_id = dm.manager_id
JOIN departments AS d
ON dm.dept_id = d.dept_id;


--List the department of each employee with the following information: 
	--employee number, last name, first name, and department name.
SELECT e.employee_id, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON e.employee_id = de.emp_id
JOIN departments AS d
ON de.dept_id = d.dept_id;


--List first name, last name, and sex for employees whose first name is 
	--"Hercules" and last names begin with "B."
SELECT first_name, last_name, gender
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';


--List all employees in the Sales department, including their 
	--employee number, last name, first name, and department name.
SELECT e.employee_id, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_id = e.employee_id
JOIN departments AS d
ON d.dept_id = de.dept_id
WHERE d.dept_name = 'Sales';


--List all employees in the Sales and Development departments, 
	--including their employee number, last name, first name, and department name.
SELECT e.employee_id, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_id = e.employee_id
JOIN departments AS d
ON d.dept_id = de.dept_id
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';


--In descending order, list the frequency count of employee last names, 
	--i.e., how many employees share each last name.
SELECT last_name,
COUNT (last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;

--"Search your ID number." You look down at your badge to see 
--that your employee ID number is 499942.
SELECT first_name, last_name
FROM employees
WHERE employee_id = '499942';