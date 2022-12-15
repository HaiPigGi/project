--NMR 1


CREATE TABLE DEPT1 (
id NUMBER(7) 
CONSTRAINT dep_id_pk PRIMARY KEY,
name VARCHAR2 (25));

DESCRIBE DEPT1;
SELECT *FROM DEPT1;

DESCRIBE departments;


--NMR 2






-- Modul 11--

-- Penggunaan peritah CREATE TABLE--
-- Contoh 1--
CREATE TABLE dept
            (deptno NUMBER(2),
            dname VARCHAR(14),
            loc VARCHAR(13));
            
DESCRIBE dept;

-- Mendefinisikan constraint pada saat membuat tabel--
-- Contoh 2--
CREATE TABLE employees2(
        employee_id NUMBER(6)
            CONSTRAINT emp2_id_pk PRIMARY KEY
        ,firs_name VARCHAR2(20)
        ,last_name VARCHAR2(25)
            CONSTRAINT emp2_last_name_nn NOT NULL
        ,email VARCHAR2(25)
            CONSTRAINT emp2_email_nn NOT NULL
            CONSTRAINT emp2_email_uk UNIQUE
        ,phone_number VARCHAR2(20)
        ,hire_date DATE
            CONSTRAINT emp2_hire_date_nn NOT NULL
        ,job_id VARCHAR2(10)
            CONSTRAINT emp2_job_nn NOT NULL
        ,salary NUMBER(8,2)
            CONSTRAINT emp2_salary_ck CHECK(salary>0)
        ,commission_pct NUMBER(2,2)
        ,manager_id NUMBER(6)
        ,department_id NUMBER(4)
            CONSTRAINT emp2_dept_fk REFERENCES
                departments(department_id));
                
DESCRIBE employees2;

-- Pelanggaran Constraint--
-- Contoh 3--
DELETE from departments
WHERE department_id = 60;

-- Penggunaan perintah membuat tabel dengan subquery
-- Contoh 4--
CREATE TABLE dept80
AS
    SELECT employee_id, last_name,
           salary*12 ANNSAL, hire_date
    FROM employees
    WHERE department_id = 80;

DESCRIBE dept80;

-- Penggunaan perintah ALTER TABLE--
-- Contoh 5--
ALTER TABLE dept80
ADD (job_id VARCHAR(9));

DESCRIBE dept80;

-- Contoh 6--
ALTER TABLE dept80
MODIFY (last_name VARCHAR(30));

DESCRIBE dept80;

-- Contoh 7--
ALTER TABLE dept80
DROP COLUMN job_id;

DESCRIBE dept80;

-- Menggunakan perintah RENAME--
-- Contoh 8--
RENAME dept80 TO detail_dept;

SELECT*
FROM tab;

-- Penggunaan perintah DROP TABLE--
-- Contoh 9--
DROP TABLE detail_dept;

SELECT*
FROM tab;

-- Latihan Modul 11--
-- Soal 1--
CREATE TABLE DEPT1 (
id NUMBER(7) 
CONSTRAINT DEPT1_id_pk PRIMARY KEY,
name VARCHAR2 (25));

DESCRIBE DEPT1;
SELECT *FROM DEPT1;

DESCRIBE departments;

-- Soal 2--
INSERT INTO DEPT1
SELECT department_id, department_name
FROM departments;

-- Soal 3--
CREATE TABLE EMP1
             (id NUMBER(7)
                CONSTRAINT em1_id_pk PRIMARY KEY,
             last_name VARCHAR2(25),
             first_name VARCHAR2(26),
             dept_id NUMBER(7)
                CONSTRAINT em1_dept_fk REFERENCES
                    DEPT1(id));
                    
DESCRIBE EMP1;

-- Soal 4--
ALTER TABLE EMP1
MODIFY (first_name VARCHAR2(50));

DESCRIBE EMP1;

-- Soal 5--
CREATE TABLE EMP2
    (id, first_name, last_name, salary, dept_id)
AS
    SELECT employee_id, first_name, last_name, salary, department_id
    FROM employees;

DESCRIBE EMP2;

-- Soal 6--
DROP TABLE EMP1;

SELECT*
FROM tab;

-- Soal 7--
RENAME EMP2 To STAFF;

SELECT*
FROM tab;

-- Soal 8--
ALTER TABLE STAFF
DROP COLUMN first_name;

DESCRIBE STAFF;

-- Soal 9--
DESCRIBE employees2;

-- Soal 10--
CREATE TABLE DEPARTMENTS2
             (department_id NUMBER(10)
                CONSTRAINT dpt2_dptid_pk PRIMARY KEY
                CONSTRAINT dpt2_dptid_nn NOT NULL,
             department_name VARCHAR2(30)
                CONSTRAINT dpt2_name_nn NOT NULL,
             manager_id NUMBER(10)
                CONSTRAINT dpt2_mgrid_nn NOT NULL
                CONSTRAINT dpt2_mgrid_fk REFERENCES
                    employees2(employee_id),
             location_id NUMBER(10)
                CONSTRAINT dpt2_nmbr_nn NOT NULL);
                
DESCRIBE DEPARTMENTS2;

-- Soal 11--
DROP TABLE EMPLOYEES2;

-- Soal 12--
DROP TABLE DEPARTMENTS2;

SELECT*
FROM tab;

-- Soal 13--
DROP TABLE EMPLOYEES2;

SELECT*
FROM tab;