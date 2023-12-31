-- departments
DROP TABLE IF EXISTS DEPARTMENTS CASCADE;
CREATE TABLE DEPARTMENTS 
(
  DEPT_NO VARCHAR NOT NULL PRIMARY KEY,
  DEPT_NAME VARCHAR
);
SELECT * FROM DEPARTMENTS;

-- TITLES
DROP TABLE IF EXISTS TITLES CASCADE;
CREATE TABLE TITLES 
(
    title_id VARCHAR NOT NULL PRIMARY KEY,
	title VARCHAR
);
SELECT * FROM TITLES;

-- EMPLOYEES
DROP TABLE IF EXISTS EMPLOYEES CASCADE;
CREATE TABLE EMPLOYEES 
(
    emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR REFERENCES TITLES(TITLE_ID),
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);
SELECT * FROM EMPLOYEES;

-- dept emp
DROP TABLE IF EXISTS DEPT_EMP CASCADE;
CREATE TABLE DEPT_EMP 
(
  ID SERIAL NOT NULL PRIMARY KEY,
  EMP_NO INT NOT NULL REFERENCES EMPLOYEES(EMP_NO),
  DEPT_NO VARCHAR NOT NULL REFERENCES DEPARTMENTS(DEPT_NO)
);
SELECT * FROM DEPT_EMP;

-- DEPT MANAGER
DROP TABLE IF EXISTS DEPT_MGR CASCADE;
CREATE TABLE DEPT_MGR 
(
	ID SERIAL PRIMARY KEY,	
    DEPT_NO VARCHAR NOT NULL REFERENCES DEPARTMENTS(DEPT_NO),
	EMP_NO INT NOT NULL REFERENCES EMPLOYEES(EMP_NO)
);
SELECT * FROM DEPT_MGR;

-- SALARIES
DROP TABLE IF EXISTS SALARIES;
CREATE TABLE SALARIES 
(
    emp_no INT NOT NULL PRIMARY KEY,
	salary INT
);
SELECT * FROM SALARIES;









