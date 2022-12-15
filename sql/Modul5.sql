SELECT employee_id,TO_CHAR(hire_date,'MM/YY') Month_hired
FROM employees
WHERE last_name='higgins';

SELECT last_name,TO_CHAR(hire_date,'fmDD MONTH YYYY')
AS HIREDATE
FROM employees;

SELECT last_name,TO_CHAR(hire_date,'fmDdspth "of" MONTH YYYY 
fmHH:MI:SS AM') AS HIREDATE
FROM employees;


--Nomer 1
SELECT last_name ||'Mendapat'|| TO_CHAR (salary,'$99,999,00') 
|| 'Perbulan Tapi Menginginkan'|| 
TO_CHAR(salary*3,'$99,999.00') AS "DREAM SALARY"
FROM employees;

--Nomer 2
SELECT last_name,hire_date,TO_CHAR(next_day(add_months(hire_date,6),'senin'), 'fmDay, "the" Ddspth "of" MONTH, YYYY') AS "REVIEW" 
FROM employees;

--Nomer 3
SELECT last_name,TO_CHAR(hire_date,'dd-mm-yy') AS "HIRE DATE", TO_CHAR(hire_date,'day')AS "DAY"
FROM employees
ORDER BY "DAY" ASC;

--Nomer 4
SELECT commission_pct,NVL2(commission_pct,TO_CHAR(commission_pct),'No Comission') AS "COMISSION"
FROM employees;

--Nomer 5
SELECT last_name,job_id,
DECODE(job_id,'AD_PRES','A',
              'ST_MAN','B',
              'IT_PROG','C',
              'SA_REP','D',
              'ST_CLERK','E',
              '0') AS "GRADE"
FROM employees;

--Nomer 6
SELECT last_name,job_id,
CASE job_id WHEN 'AD_PRES' THEN 'A'
            WHEN 'ST_MAN' THEN 'B'
            WHEN 'IT_PROG' THEN 'C'
            WHEN 'SA_REP' THEN 'D'
            WHEN 'ST_CLERK' THEN 'E'
ELSE '0' END "GRADE"
FROM employees;

--Kuis Modul 5
SELECT employee_id,last_name,department_id,manager_id,
DECODE(manager_id,100,'Steven',
        103,'Alexander',108,'Nancy','-') AS Manager,
        NVL2(commission_pct,'Ada Komisi','-') AS "KOMISI"
FROM employees  
WHERE manager_id !=114 AND department_id NOT BETWEEN 30 AND 90;


SELECT first_name,LENGTH(first_name) "expr1",
last_name,LENGTH (last_name)"expr2",
NULLIF (LENGTH (first_name),LENGTH(last_name)) result 
FROM employees 
ORDER BY first_name;

SELECT last_name,salary,
NVL(commission_pct,0),
(salary*12)+(salary*12*nvl(commission_pct,0)) AS ANNSAL
FROM employees;