--Nomer 1
SELECT  location_id,street_address,city,state_province,country_name
FROM locations
NATURAL JOIN countries;

--Nomer 2 a
SELECT employees.last_name,department_id,departments.department_name
FROM employees JOIN departments
USING (department_id);

--Nomer 2 b
SELECT e.last_name,e.department_id,d.department_name
FROM employees e  JOIN departments d
ON (e.department_id=d.department_id);

--Nomer 3 a
SELECT last_name,job_id,department_id,department_name
FROM employees
NATURAL JOIN (departments NATURAL JOIN locations)
WHERE city='Toronto';

--Nomer 3 b
SELECT last_name,job_id,department_id,department_name
FROM employees JOIN departments
USING (department_id) JOIN locations 
USING (location_id)
WHERE locations.city='Toronto';

--Nomer 3 C
SELECT e.last_name,e.job_id,d.department_id,d.department_name
FROM employees e JOIN departments d
ON (d.department_id= e.department_id)
JOIN locations l
ON (d.location_id=l.location_id)
WHERE l.city='Toronto';

--Nomer 4
SELECT e.last_name "Employee",e.employee_id "EMP#",m.last_name "Manager",m.employee_id "MGR#"
FROM employees e JOIN employees m
ON (e.manager_id = m.employee_id)
ORDER BY m.employee_id,e.manager_id;

--Nomer 5
SELECT e.last_name,d.department_id,l.location_id,l.city
FROM employees e JOIN departments d
ON (d.department_id = e.department_id)
JOIN locations l
ON (d.location_id=l.location_id)
AND e.commission_pct IS NOT NULL;



