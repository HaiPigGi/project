
-- Modul 12--

-- Operator UNION--
-- Contoh 1--
SELECT employee_id, job_id
FROM employees
UNION
SELECT employee_id, job_id
FROM job_history;

-- Contoh 2--
SELECT employee_id, job_id, department_id
FROM employees
UNION 
SELECT employee_id, job_id, department_id
FROM job_history;

-- Operator UNION ALL--
-- Contoh 3--
SELECT employee_id, job_id, department_id
FROM employees
UNION ALL
SELECT employee_id, job_id, department_id
FROM job_history
ORDER BY employee_id;

-- Operator INTERSECT--
-- Contoh 4--
SELECT employee_id, job_id
FROM employees
INTERSECT
SELECT employee_id, job_id
FROM job_history;

-- Contoh 5--
SELECT employee_id, job_id, department_id
FROM employees
INTERSECT
SELECT employee_id, job_id, department_id
FROM job_history;

-- Operator MINUS--
-- Contoh 6--
SELECT employee_id, job_id
FROM employees
MINUS
SELECT employee_id, job_id
FROM job_history;

-- Penulisan Klausa WHERE--
-- Contoh 7--
SELECT employee_id, department_id
FROM employees
WHERE (employee_id, department_id)
    IN(SELECT employee_id, department_id
    FROM employees
    UNION
    SELECT employee_id, department_id
    FROM job_history);

-- Contoh 8--
SELECT employee_id, job_id, salary
FROM employees
UNION
SELECT employee_id, job_id, 0
FROM job_history;

-- Latihan Modul 12--
-- Soal 1--
SELECT department_id, job_id
FROM employees
MINUS
SELECT department_id, job_id
FROM employees
WHERE job_id LIKE 'ST_CLERK';


-- Soal 2--
SELECT country_id, country_name
FROM countries
MINUS
SELECT country_id, country_name
FROM countries
NATURAL JOIN locations
NATURAL JOIN departments;

-- Soal 3--
SELECT job_id, department_id
FROM employees
WHERE department_id IN (10, 20, 50)
UNION
SELECT job_id, department_id
FROM employees
WHERE department_id IN (10, 20, 50);

-- Soal 4--
SELECT employee_id, job_id
FROM employees
INTERSECT
SELECT employee_id, job_id
FROM job_history;