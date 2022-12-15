
SELECT e.last_name, e.job_id, j.job_title, e.department_id, d.department_name, l.city, m.last_name as "MGR_LASTNAME"
FROM employees e join employees m  ON (e.manager_id = m.employee_id)
JOIN jobs j
ON (e.job_id = j.job_id)
JOIN departments d
ON (e.department_id = d.department_id)
JOIN locations l
ON (d.location_id = l.location_id)
WHERE j.job_title = 'Purchasing Clerk';



SELECT country_name, city, department_name, COUNT(employee_id), SUM(salary) 
FROM employees JOIN departments
USING (department_id)
JOIN locations
USING (location_id)
JOIN countries
USING (country_id)
JOIN regions
USING (region_id)
WHERE region_name IN ('Americas', 'Europe')
GROUP BY country_name, city, department_name
HAVING COUNT(employee_id) >= 10
ORDER BY SUM (salary) desc;





SELECT last_name,job_id,department_id,salary
FROM employees
WHERE salary>(SELECT salary
              FROM employees
              WHERE first_name='Pat')
              AND department_id IN (SELECT d.department_id 
              FROM departments d NATURAL JOIN jobs j
              WHERE j.job_title='Accountant')
              AND department_id=100;


--CTT E
--1
SELECT e.first_name,e.commission_pct,job_title,d.department_id,
        d.department_name,l.city,c.country_name
FROM employees e,jobs j,departments d, locations l, countries c
WHERE e.department_id=d.department_id 
    AND d.location_id=l.location_id
    AND l.country_id=c.country_id
    AND e.commission_pct IS NOT NULL
    AND j.job_title='Sales Manager';
--2
SELECT l.city,d.department_name,j.job_title,(count(e.employee_id)),(AVG (e.salary))
FROM employees e JOIN departments d
USING (department_id) JOIN locations l
USING (location_id) JOIN countries c
USING (country_id) JOIN jobs j
USING (job_id)
WHERE country_name in ('United kingdom','Canada','Germany')
GROUP BY l.city,d.department_name,j.job_title
HAVING COUNT (e.employee_id)<10
ORDER BY AVG (salary) desc;
--3
SELECT last_name,job_id,department_id,salary
FROM employees
WHERE salary>(SELECT salary
              FROM employees
              WHERE first_name='Pat')
              AND department_id IN (SELECT d.department_id 
              FROM departments d NATURAL JOIN jobs j
              WHERE j.job_title='Accountant')
              AND department_id=100;
