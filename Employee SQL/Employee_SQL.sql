-- Create dept table.

DROP TABLE IF EXISTS Departments;

CREATE TABLE Departments (
	dept_no VARCHAR(20),
	dept_name VARCHAR(20) NOT NULL,
	PRIMARY KEY (dept_no)
);
	
	SELECT * FROM Departments;
	
-- Create employee table.

DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(20) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_night VARCHAR(20) NOT NULL,
	sex VARCHAR(20) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

SELECT * FROM Employees;

-- Create employee dept table.

DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(20) NOT NULL
);

SELECT * FROM dept_emp;

-- Create manager dept table.

DROP TABLE IF EXISTS dept_managers;

CREATE TABLE dept_managers (
	dept_no VARCHAR(20) NOT NULL,
	emp_no INT
);

SELECT * FROM dept_managers;

-- Create salary table.

DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary BIGINT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries

--CREATE title table.

DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
	emp_no VARCHAR(20) NOT NULL,
	title VARCHAR(20) NOT NULL
);

SELECT * FROM titles;