USE employees;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS manager_name
FROM departments d
         INNER JOIN dept_manager dm ON d.dept_no = dm.dept_no
         INNER JOIN employees e ON dm.emp_no = e.emp_no AND dm.to_date = '9999-01-01';

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS manager_name
FROM departments d
         JOIN dept_manager dm ON d.dept_no = dm.dept_no
         JOIN employees e ON dm.emp_no = e.emp_no
WHERE e.gender = 'F';

SELECT t.title as title, COUNT(*) as total
FROM employees e
         INNER JOIN dept_emp de ON e.emp_no = de.emp_no
         INNER JOIN departments d ON de.dept_no = d.dept_no AND d.dept_name = 'Customer Service'
         INNER JOIN titles t ON e.emp_no = t.emp_no
WHERE de.to_date > NOW() AND t.to_date > NOW()
GROUP BY t.title;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM departments d
         INNER JOIN dept_manager dm ON d.dept_no = dm.dept_no AND dm.to_date = '9999-01-01'
         INNER JOIN employees e ON dm.emp_no = e.emp_no
         INNER JOIN salaries s ON e.emp_no = s.emp_no AND s.to_date = '9999-01-01';

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, d.dept_name AS Department, CONCAT(m.first_name, ' ', m.last_name) AS Manager
FROM employees e
         JOIN dept_emp de ON e.emp_no = de.emp_no
         JOIN departments d ON de.dept_no = d.dept_no
         JOIN dept_manager dm ON de.dept_no = dm.dept_no
         JOIN employees m ON dm.emp_no = m.emp_no
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01';







