SELECT * FROM Departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_managers;
SELECT * FROM salaries;
SELECT * FROM employees;
SELECT * FROM titles;

-- List the employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no,e.first_name,e.last_name,e.sex,s.salary
FROM Employees as e
INNER JOIN salaries as s ON
s.emp_no = e.emp_no
ORDER BY emp_no ASC;

-- List the first name, last name, and hire date for the employees who were hired in 1986
SELECT e.first_name,e.last_name,e.hire_date
FROM Employees as e
WHERE DATE_PART('year',hire_date) = 1986
;

-- List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT m.dept_no,d.dept_name,m.emp_no,e.last_name,e.first_name
FROM dept_managers as m
LEFT JOIN departments as d ON
d.dept_no = m.dept_no
LEFT JOIN Employees as e ON
e.emp_no = m.emp_no
;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT d.dept_no,e.emp_no,e.last_name,e.first_name,d.dept_name
FROM Employees as e
JOIN dept_emp as de ON
e.emp_no = de.emp_no
JOIN Departments as d ON
d.dept_no = de.dept_no
;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT e.first_name,e.last_name,e.sex
FROM Employees as e
JOIN dept_emp ON
dept_emp.emp_no = e.emp_no
JOIN Departments ON
dept_emp.dept_no = Departments.dept_no

-- Run this AFTER previous code ^ to get Hercules B...
SELECT first_name as "First Name", last_name as "Last Name", sex as "Sex"
 FROM employees
  WHERE first_name ='Hercules' AND
   last_name LIKE 'B%'
    ORDER BY "Last Name" ASC;
	
-- List each employee in the Sales department, including their employee number, last name, and first name
-- sales dept id = d007
SELECT e.emp_no, e.last_name, e.first_name, departments.dept_name
FROM employees as e
JOIN dept_emp ON e.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no = 'd007'
;

SELECT * FROM Departments;

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
-- Sales = d007. Development = d005

SELECT e.emp_no, e.last_name, e.first_name, departments.dept_name
FROM employees as e
JOIN dept_emp ON e.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no = 'd005' or departments.dept_no = 'd007'
ORDER BY "last_name" ASC;

-- List the frequency counts, in descending order, of all the employee last names 
SELECT last_name, COUNT(last_name) AS "Frequency count"
FROM employees
GROUP BY last_name
ORDER BY "Frequency count" DESC;
;