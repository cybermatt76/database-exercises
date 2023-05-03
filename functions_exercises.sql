USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;

SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees;

SELECT * FROM employees WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25;

SELECT * FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
  AND MONTH(birth_date) = 12
  AND DAY(birth_date) = 25;

SELECT * FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
  AND MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
ORDER BY hire_date DESC, birth_date ASC
LIMIT 1;

SELECT *, DATEDIFF(NOW(), hire_date) AS days_employed FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
  AND MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
ORDER BY hire_date DESC, birth_date ASC;
