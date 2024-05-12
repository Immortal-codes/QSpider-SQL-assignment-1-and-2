create database emp;

use emp;

CREATE TABLE employees (
    empno INT PRIMARY KEY AUTO_INCREMENT,
    ename VARCHAR(50),
    job VARCHAR(50),
    mgr INT,
    hiredate DATE,
    sal DECIMAL(10,2),
    comm DECIMAL(10,2),
    deptno INT
);


INSERT INTO employees (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES
(7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800, NULL, 20),
(7499, 'FALLEN', 'SALESMAN', 7698, '1981-02-20', 1600, 300, 30),
(7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250, 500, 30),
(7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975, NULL, 20),
(7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250, 1400, 30),
(7598, 'BLAKE', 'MANAGER', 77839, '1981-05-01', 2850, NULL, 30),
(7782, 'CLARK', 'MANAGER', 7698, '1981-06-09', 2450, NULL, 10),
(7788, 'SCOTT', 'ANALYST', 8939, '1987-04-19', 3000, NULL, 20),
(7839, 'KING', 'PRESIDENT', NULL, NULL, 5000, NULL, 10),
(7844, 'TURNER', 'SALESMAN', NULL, '1981-09-08', 1500, NULL, 30),
(7876, 'ADAMS', 'CLERK', 7698, '1987-05-23', 1100, NULL, 20),
(7900, 'JAMES', 'CLERK', 7788, '1981-03-03', 950, NULL, 30),
(7902, 'FORD', 'ANALYST', 7698, '1982-01-23', 3000, NULL, 20),
(7934, 'MILLER', 'CLERK', 7566, '1982-01-23', 1300, NULL, 10);

SELECT * FROM employees;
			 -- ----------------------------------  Assignment 1 ----------------------------------
-- 1.WRITE A QUERY TO DISPLAY ALL THE DETAILS FROM THE EMPLOYEE TABLE.
SELECT * FROM employees;

-- 2.WAQTD NAMES OF ALL THE EMPLOYEES.
select ename from employees;

-- 3.WAQTD NAME AND SALARY GIVEN TO ALL THE EMPLOYEES.
Select ename, sal from employees;

-- 4.WAQTD NAME AND COMMISSION GIVEN TO ALL THE EMPLOYEES.  
SELECT ename, comm FROM employees;

-- 5.WAQTD EMPLOYEE ID AND DEPARTMENT NUMBER OF ALL THE EMPLOYEES
select empno, deptno from employees;

-- 6.WAQTD ENAME AND HIREDATE OF ALL THE EMPLOYEES .
select ename, hiredate from employees;

-- 7.WAQTD NAME AND DESIGNATION OF ALL THE EMPLPOYEES .
select ename,job from employees;

-- 8.WAQTD NAME , JOB AND SALARY GIVEN ALL THE EMPLOYEES. 
select ename, job, sal from employees;

-- 9.WAQTD DNAMES PRESENT IN DEPARTMENT TABLE.
-- 10.WAQTD DNAME AND LOCATION PRESENT IN DEPT TABLE.

-- ----------------------------------------------------------------------------  Assignment 2 -----------------------------------------------------------------------
-- Assignment on Expression and Alias
-- 1.WAQTD NAME OF THE EMPLOYEE ALONG WITH THEIR ANNUAL SALARY.

-- annual salary maang rha hai, monthly given hai to 12th se multiply krdenge or return krdenge.
SELECT ename, sal * 12 AS annual_salary FROM employees;

-- 2.WAQTD ENAME AND JOB FOR ALL THE EMPLOYEE WITH THEIR HALF TERM SALARY.

-- half term ke liye 6 se multiply krdenge.
SELECT ename, sal * 6 AS annual_salary FROM employees;

-- 3.WAQTD ALL THE DETAILS OF THE EMPLOYEES ALONG WITH AN ANNUALBONUS OF 2000.
SELECT ename, (sal * 12)+2000 AS annual_salary FROM employees;

-- 4.WAQTD NAME SALARY AND SALARY WITH A HIKE OF 10%.

SELECT ename, (sal * 12)+(sal * 12)*100/10 AS annual_salary FROM employees;

-- 5.WAQTD NAME AND SALARY WITH DEDUCTION OF 25%.
SELECT ename, (sal * 12)*0.75  FROM employees;

-- 6.WAQTD NAME AND SALARY WITH MONTHLY HIKE OF 50.

SELECT ename, sal+(sal )*50/100 AS monthly_hike FROM employees;

-- 7.WAQTD NAME AND ANNUAL SALARY WITH DEDUCTION OF 10%.
SELECT ename, (sal * 12) * 0.90 AS annual_salary_with_deduction FROM employees;

-- 8.WAQTD TOTAL SALARY GIVEN TO EACH EMPLOYEE (SAL+COMM).
SELECT ename, sal + COALESCE(comm, 0) AS total_salary FROM employees;

-- 9.WAQTD DETAILS OF ALL THE EMPLOYEES ALONG WITH ANNUAL SALARY.
SELECT ename, sal * 12 AS annual_salary FROM employees;

-- 10.WAQTD NAME AND DESIGNATION ALONG WITH 100 PENALTY IN SALARY.
SELECT ename, job, sal - 100 AS salary_with_penalty FROM employees;



 -- -------------------------------------------------------------  Assignment 3 ----------------------------------------------------------------------------------------
-- ASSIGNMENT ON WHERE Clause .

-- 1.WAQTD THE ANNUAL SALARY OF THE EMPLOYEE WHOS NAME IS SMITH 

select sal from employees where ename = "smith" ;

-- 2.WAQTD NAME OF THE EMPLOYEES WORKING AS CLERK
SELECT ename
FROM employees
WHERE job = 'CLERK';

-- 3.WAQTD SALARY OF THE EMPLOYEES WHO ARE WORKING AS SALESMAN

SELECT sal
FROM employees
WHERE job = 'SALESMAN';

-- 4.WAQTD DETAILS OF THE EMP WHO EARNS MORE THAN 2000
SELECT *
FROM employees
WHERE sal > 2000;

-- 5.WAQTD DETAILS OF THE EMP WHOS NAME IS JONES
SELECT *
FROM employees
WHERE ename = 'JONES';

-- 6.WAQTD DETAILS OF THE EMP WHO WAS HIRED AFTER 01-JAN-81
-- note: date exclusive hoti hai..!!
SELECT *
FROM employees
WHERE hiredate > '1981-01-01';

-- 7.WAQTD NAME AND SAL ALONG WITH HIS ANNUAL SALARY IF THE 
--  SALARY IS MORE THAN 12000

SELECT ename, sal, sal * 12 AS annual_salary
FROM employees
WHERE sal * 12 > 12000;

-- 8.WAQTD EMPNO OF THE EMPLOYEES WHO ARE WORKING IN DEPT 30
SELECT empno
FROM employees
WHERE deptno = 30;

-- 9.WAQTD ENAME AND HIREDATE IF THEY ARE HIRED BEFORE 1981
SELECT ename, hiredate
FROM employees
WHERE hiredate < '1981-01-01';

-- 10.WAQTD DETAILS OF THE EMPLOYEES WORKING AS MANAGER
SELECT *
FROM employees
WHERE job = 'MANAGER';

-- 11.WAQTD NAME AND SALARY GIVEN TO AN EMPLOYEE IF
-- EMPLOYEE EARNS A COMMISSION OF RUPEES 1400

SELECT ename, sal
FROM employees
WHERE comm = 1400;

-- 12.WAQTD DETAILS OF EMPLOYEES HAVING COMMISSION MORE THAN SALARY
SELECT *
FROM employees
WHERE comm > sal;

-- 13.WAQTD EMPNO OF EMPLOYEES HIRED BEFORE THE YEAR 87

SELECT empno
FROM employees
WHERE YEAR(hiredate) < 1987;

-- 14.WAQTD DETAILS OF EMPLOYEES WORKING AS AN ANALYST
SELECT *
FROM employees
WHERE job = 'ANALYST';

-- 15.WAQTD DETAILS OF EMPS EARNING MORE THAN 2000 RUPEES PER MONTH
SELECT *
FROM employees
WHERE sal > 2000;


 -- -------------------------------------------------------------  Assignment 3 ----------------------------------------------------------------------------------------
-- assignment on logical operators

-- 1.WAQTD DETAILS OF THE EMPLOYEES WORKING AS CLERK AND EARNING LESS THAN 1500
SELECT *
FROM employees
WHERE job = 'CLERK' AND sal < 1500;

-- 2.WAQTD NAME AND HIREDATE OF THE EMPLOYEES WORKING AS MANAGER IN DEPT 30
SELECT ename, hiredate
FROM employees
WHERE job = 'MANAGER' AND deptno = 30;

