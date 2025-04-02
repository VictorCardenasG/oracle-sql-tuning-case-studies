SELECT /*+ case_study_3_leading LEADING(D2) */ E.FIRST_NAME, E.LAST_NAME, E.HIRE_DATE 
FROM   EMPLOYEES E, DEPARTMENTS D1 
WHERE	E.EMPLOYEE_ID IN (   SELECT MANAGER_ID FROM DEPARTMENTS D2 WHERE DEPARTMENT_ID = 10) 
AND    E.DEPARTMENT_ID = D1.DEPARTMENT_ID 
AND    D1.LOCATION_ID = 1700 
AND    E.HIRE_DATE > TO_DATE('30-JAN-2000 00:00:00','DD-MON-YYYY HH24:MI:SS');