SELECT employee_id,last_name,job_id,salary
FROM employees
WHERE salary>=10000
AND job_id LIKE '%MAN%';


SELECT employee_id,last_name,job_id,salary
FROM employees
WHERE salary>=10000
OR job_id LIKE '%MAN%';

SELECT last_name,job_id
FROM employees
WHERE job_id
NOT IN ('IT_PROG', 'ST_CLERK', 'SA_REP');

SELECT last_name,job_id,salary
FROM employees
WHERE job_id='SA_REP'
OR job_id='AD_PRES'
AND salary > 15000;

SELECT last_name,job_id,salary
FROM employees
WHERE (job_id='SA_REP'
OR job_id='AD_PRES')
AND salary > 15000;

SELECT last_name,job_id,department_id,hire_date
FROM employees
ORDER BY hire_date;





--nomer 1
SELECT last_name,job_id,hire_date
FROM employees
WHERE hire_date BETWEEN '1 2 1998' AND '31 12 2008'
ORDER BY hire_date ASC;
--nomer 2
SELECT last_name,department_id
FROM employees
WHERE department_id=20 OR department_id=50
ORDER BY LAST_NAME DESC;
--Nomer 3
SELECT last_name "Employee",salary "Monthly Salary"
FROM employees
WHERE salary BETWEEN 5000 AND 12000 
 AND department_id IN (20,50);
 --Nomer 4
 SELECT last_name
 FROM employees
 WHERE last_name LIKE '%a%' 
 AND last_name LIKE '%e%';
 --Nomer 5
 SELECT last_name,salary,commission_pct
 FROM employees
 WHERE commission_pct is not null
 ORDER BY salary,commission_pct DESC;
 --Nomer 6
 SELECT last_name,job_id,salary
 FROM employees
 WHERE job_id IN ('SA_REP','SH_CLERK')
 AND salary NOT IN (2500,3500,7000);
 --Nomer 7
 SELECT last_name,job_id,salary
 FROM employees
 WHERE last_name LIKE 'O%'
 ORDER BY last_name ASC, job_id DESC;
 --Nomer 8
 SELECT department_id,last_name,salary,commission_pct
 FROM employees
 WHERE commission_pct is null
 ORDER BY department_id DESC,last_name ASC;
 --Nomer 9
  SELECT department_id,last_name,salary,commission_pct
 FROM employees
 WHERE salary NOT BETWEEN 7000 AND 10000 
 AND commission_pct>0.1
 ORDER BY department_id DESC,last_name ASC;
 --Nomer 10
 SELECT department_id "Department",last_name "Employee",salary "Monthly Salary" 
FROM employees
WHERE salary BETWEEN 5000 AND 12000 
 AND department_id IN (20,50)
 ORDER BY "Monthly Salary" DESC;
 
 --kuis
 SELECT first_name ||' '||last_name || ' ' || job_id "Data Karyawan"
 FROM employees
 WHERE manager_id is null;
 