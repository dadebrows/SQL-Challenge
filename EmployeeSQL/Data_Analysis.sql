Select * From employees
Select * From departments
Select * From department_emp
Select * From department_manager
Select * From titles
Select * From salaries

-- List the following details of each employee: employee number, last name, first name, sex & salary
Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
From employees
Inner Join salaries 
on employees.emp_no = salaries.emp_no
Order by employees.emp_no;

-- List first name, last name & hire date for employees who were hired in 1986.
Select first_name, last_name, hire_date
from employees
where hire_date >= '1986-01-01' 
and hire_date < '1987-01-01';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
Select c.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from employees As e
INNER JOIN department_manager as c ON
e.emp_no = c.emp_no
INNER JOIN departments as d ON
d.dept_no = c.dept_no;

-- List the department of each employee with the following information: employee number, last name, first name & department name.
Select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees As e
INNER JOIN department_emp as f ON
e.emp_no = f.emp_no
INNER JOIN departments as d ON
d.dept_no = f.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" & last names begin with "B."
Select first_name, last_name, sex
from employees
where first_name = 'Hercules' 
and last_name Like 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name & department name.
Select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees As e
INNER JOIN department_emp as f ON
e.emp_no = f.emp_no
INNER JOIN departments as d ON
d.dept_no = f.dept_no 
where d.dept_name = 'Sales'

-- List all employees in the Sales and Development departments, including their employee number, last name, first name & department name.
Select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees As e
INNER JOIN department_emp as f ON
e.emp_no = f.emp_no
INNER JOIN departments as d ON
d.dept_no = f.dept_no 
where d.dept_name = 'Sales' or d.dept_name ='Development'

-- In descending order, list the frequency count of employee last names: how many employees share each last name.
Select last_name, count(last_name) as "Employee_Count" from 
public.employees
group by last_name
order by "Employee_Count" desc;
