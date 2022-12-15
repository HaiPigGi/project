--Nomer 1
SELECT last_name,hire_date
FROM employees
WHERE department_id=
        (SELECT department_id
        FROM employees
        WHERE last_name='Zlotkey')
        AND last_name NOT IN 'Zlotkey';
        
--Nomer 2
SELECT employee_id,last_name,salary
FROM employees
WHERE salary> 
                (SELECT AVG(salary)
                FROM employees)
                ORDER BY salary ASC;
                
--Nomer 3
SELECT employee_id,last_name
FROM employees
WHERE department_id IN
                        (SELECT department_id
                        FROM employees
                        WHERE last_name LIKE '%u%');
                        
--Nomer 4
SELECT last_name,department_id,job_id
FROM employees
WHERE department_id IN
                    (SELECT department_id
                    FROM departments
                    WHERE location_id=1700)
                    ORDER BY department_id;
                    
--Nomer 5
SELECT last_name,salary
FROM employees
WHERE manager_id IN
                        (SELECT employee_id
                        FROM employees
                        WHERE last_name ='King');
                        
--Nomer 6
SELECT department_id,last_name,job_id
FROM employees
WHERE department_id IN
                        (SELECT department_id
                        FROM departments
                        WHERE department_name='Executive');
                        
                        
--kuis

SELECT l.city,d.department_name,e.job_title,count(*),avg salary
FROM employees e JOIN departments d JOIN locations l JOIN countries c
WHERE c.country_name IN ('United Kingdom','Canada','Germany')
GROUP BY l.city, d.department_id,e.job_id
HAVING count (*) <10
ORDER BY avg(salary);


--Kuis

Select country_name, department_name, count(*)
from employees join (departments 
               JOIN (Locations 
               Join (countries 
               join regions using(region_id)) 
               using(country_id))
               using(location_id))
               Using (department_id) 
where region_name in ('Americas', 'Europe')
group by country_name,city, department_name
having count(*) <= 10
order by Max(salary);
