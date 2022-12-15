--Nomer 1
SELECT a.location_id,a.street_address,a.city,
a.state_province,c.country_name
FROM locations a, countries c
WHERE a.country_id = c.country_id;

--Nomer 2
SELECT e.last_name,e.department_id, d.department_name
FROM employees e, departments d
WHERE e.department_id = d.department_id
AND d.department_name= 'Shipping';

--Nomer 3
SELECT a.last_name,a.job_id, c.department_id, 
c.department_name
FROM employees a, departments c, locations d
WHERE a.department_id = c.department_id
AND c.location_id = d.location_id
AND d.city= 'Toronto';

--Nomer 4
SELECT e.last_name AS "Employee", e.employee_id AS "EMP#",
m.last_name AS "Manager", m.employee_id AS "MGR#"
FROM employees e, employees m
WHERE e.manager_id= m.employee_id
ORDER BY m.employee_id, e.employee_id;

--Nomer 5
SELECT a.last_name, b.department_id, 
c.location_id, c.city
FROM employees a,departments b , locations c
WHERE a.department_id = b.department_id
AND b.location_id = c.location_id
AND a.commission_pct IS NOT NULL;

SELECT employee_id,last_name,department_id,manager_id,

DECODE(manager_id,100,'Steven',

        103,'Alexander',108,'Nancy','-') AS Manager,

        NVL2(commission_pct,'Ada Komisi','-') AS "KOMISI"

FROM employees  

WHERE manager_id !=114 AND department_id NOT BETWEEN 30 AND 90;

