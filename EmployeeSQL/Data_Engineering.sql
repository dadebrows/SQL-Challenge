Create table titles(
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(30) NOT NULL,
	Primary Key (title_id)
);

Create table employees(
	emp_no INT NOT NULL,
	emp_title_id varchar(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date DATE NOT NULL,
	Primary Key (emp_no),
	Foreign Key (emp_title_id) references titles (title_id)
);

Create table departments(
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	Primary Key (dept_no)
);

Create table department_manager(
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	Foreign Key (dept_no) references departments (dept_no),
	Foreign Key (emp_no) references employees (emp_no)
);

Create table department_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	Foreign Key (emp_no) references employees (emp_no),
	Foreign Key (dept_no) references departments (dept_no)
);

Select * from department_emp

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	Foreign Key (emp_no) references employees (emp_no)
);
