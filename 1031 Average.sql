SELECT * FROM EMPLOYEES
WHERE SALARY > AVG(SALARY);

SELECT * FROM EMPLOYEES
WHERE SALARY < (SELECT AVG(SALARY) FROM EMPLOYEES);

SELECT EMP_ID, SALARY, AVG(SALARY) AS AVERAGE
FROM EMPLOYEES;

SELECT EMP_ID, SALARY, (SELECT AVG(SALARY) FROM EMPLOYEES) AS AVERAGE
FROM EMPLOYEES;

SELECT * FROM (SELECT EMP_ID, F_NAME, L_NAME, DEP_ID FROM EMPLOYEES) AS EMP4ALL;

SELECT * FROM EMPLOYEES
WHERE DEP_ID IN (SELECT DEPT_ID_DEP FROM DEPARTMENTS);

SELECT * FROM EMPLOYEES
WHERE DEP_ID IN (SELECT DEPT_ID_DEP FROM DEPARTMENTS WHERE LOC_ID = 'L0002');

SELECT DEPT_ID_DEP, DEP_NAME FROM DEPARTMENTS
WHERE DEPT_ID_DEP IN (SELECT DEP_ID FROM EMPLOYEES WHERE SALARY > 70000);

SELECT * FROM DEPARTMENTS, EMPLOYEES;

SELECT * FROM DEPARTMENTS D, EMPLOYEES E
WHERE E.DEP_ID = D.DEPT_ID_DEP;

SELECT E.EMP_ID, D.DEP_NAME
FROM EMPLOYEES E, DEPARTMENTS D
WHERE E.DEP_ID = D.DEPT_ID_DEP;
