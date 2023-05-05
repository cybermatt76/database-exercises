USE employees;

SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date = (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010)

SELECT e.emp_no, e.first_name, e.last_name, t.title
FROM employees e
         JOIN titles t ON e.emp_no = t.emp_no
WHERE e.first_name = 'Aamod';

SELECT d.dept_no, d.dept_name, e.first_name, e.last_name
FROM dept_manager dm
         JOIN departments d ON dm.dept_no = d.dept_no
         JOIN employees e ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';

SELECT d.dept_name
FROM departments d
         INNER JOIN dept_manager dm ON d.dept_no = dm.dept_no
         INNER JOIN employees e ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';

SELECT e.first_name, e.last_name
FROM employees e
         JOIN salaries s ON e.emp_no = s.emp_no
WHERE s.salary = (
    SELECT MAX(salary)
    FROM salaries
)




