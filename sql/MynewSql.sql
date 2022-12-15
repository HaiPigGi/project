SELECT employee_id,first_name,job_id,salary
from employees;

SELECT DISTINCT job_id
from employees;

SELECT employee_id, first_name|| ' ' || last_name as "FULL NAME", hire_date
FROM employees;

SELECT employee_id,last_name,salary*12 "ANNUAL SALARY"
from employees;

select last_name || ' : 1 bulan gaji = '|| salary " Gaji Perbulan "
FROM employees;

DESCRIBE employees;

SELECT *from departments;

from employees;

SELECT employee_id,last_name as Employee,job_id as JOB,hire_date

from employees;

SELECT employee_id || ',' || first_name || ','|| last_name ||','|| email || ','|| phone_number ||','|| job_id ||','|| hire_date || ',' || salary || ','|| department_id AS "THE OUTPUT"
from employees;

from employees;