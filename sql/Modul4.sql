SELECT 'The Job Id for ' || UPPER (last_name) || 'is ' || LOWER (JOB_ID) as "EMPLOYEE DETAILS" 
FROM employees;

SELECT employee_id,last_name,department_id
FROM employees
WHERE last_name='austin';

SELECT employee_id,CONCAT (first_name,last_name) NAMA,job_id,LENGTH (last_name),INSTR (last_name,'a') "Posisi huruf 'a'" 
FROM employees
WHERE SUBSTR (Job_id,4)='REP';

SELECT employee_id,CONCAT (first_name,last_name) NAMA ,job_id,LENGTH (last_name),INSTR (last_name,'a') "Posisi huruf ''a" 
FROM employees
WHERE SUBSTR (last_name,-1,1)='n';


--Nomer 1
SELECT employee_id,INITCAP (last_name) AS "last Name",LENGTH (last_name)
FROM employees
WHERE last_name LIKE 'A%'
OR last_name LIKE 'J%'
OR last_name LIKE 'M%';

--Nomer 2
SELECT employee_id,CONCAT(LOWER(SUBSTR(first_name,1,1)),UPPER (SUBSTR (first_name,2))) AS "First Name 2",INSTR (first_name,'a') AS "constains 0 ?"
FROM employees
WHERE first_name LIKE '%n'
ORDER BY first_name ASC;

--Nomer 3
SELECT employee_id,last_name, LPAD (salary,10,'$') AS salary
FROM employees
WHERE job_id='SA_REP'
ORDER BY last_name asc;

--Nomer 4
SELECT employee_id, last_name, salary , ROUND(0.17*salary+SALARY,2) "NEW SALARY"
FROM EMPLOYEES
ORDER BY "NEW SALARY" DESC;

--Nomer 5
SELECT employee_id, last_name, salary , ROUND(0.17*salary+SALARY,2) "NEW SALARY",ROUND(0.17*salary+SALARY,2)-salary AS "INCRASE"
FROM employees
ORDER BY "NEW SALARY" DESC;

--Nomer 6
SELECT last_name,ROUND (MONTHS_BETWEEN (SYSDATE,hire_date),0) AS "MONTHS WORKED"
FROM employees
ORDER BY "MONTHS WORKED" ASC;

--Nomer 7
SELECT last_name,ROUND ((SYSDATE-hire_date)/365,0) AS "Tahun",ROUND (((SYSDATE-hire_date)/365)/12) AS "Bulan"
FROM employees
ORDER BY "Tahun" DESC,"Bulan" DESC;
