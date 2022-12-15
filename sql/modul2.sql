SELECT employee_id,last_name,job_id,department_id
FROM employees
WHERE department_id=90;

SELECT last_name,salary
FROM employees
WHERE salary >=2500  and salary <=3000;

SELECT employee_id,last_name,salary,manager_id
FROM employees
WHERE  manager_id IN (100,101,201);

SELECT employee_id,last_name,salary,manager_id
FROM employees
WHERE  last_name IN ('Hatstein','Vargas');

SELECT first_name,hire_date,last_name
FROM employees
WHERE last_name LIKE '%___t';

SELECT last_name,manager_id
FROM employees
WHERE manager_id is null;

--soal nmr 1
SELECT last_name,salary
FROM employees
WHERE salary>12000;
--Soal nmr 2
SELECT last_name,department_id
FROM employees
WHERE  employee_id=176;
--Soal nmr 3
SELECT last_name,salary
FROM employees
WHERE salary BETWEEN 5000 AND 12000;
--Soal nmr 4
SELECT last_name,hire_date
FROM employees
WHERE hire_date LIKE '%2004';
--Soal nmr 5
SELECT last_name,job_id,hire_date
FROM employees
WHERE last_name IN ('Matos','Taylor');
--Soal nmr 6
SELECT last_name,salary,commission_pct
FROM employees
WHERE commission_pct is not null;
--Soal nmr 7
SELECT employee_id,last_name
FROM employees
WHERE last_name LIKE '__a%';
--Soal nmr 8
SELECT employee_id,first_name,last_name,hire_date
FROM employees
WHERE hire_date > '31 12 1997';
--Soal nmr 9
SELECT last_name 
FROM employees
WHERE last_name LIKE 'M%';
--Soal nmr 10
SELECT employee_id,last_name,job_id
FROM employees
WHERE job_id LIKE 'IT\_%' ESCAPE '\';


