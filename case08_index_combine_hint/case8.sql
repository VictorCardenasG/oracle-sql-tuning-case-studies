SELECT E.FIRST_NAME, E.LAST_NAME --case_study_8
FROM EMPLOYEES E, DEPARTMENTS D
WHERE (E.EMPLOYEE_ID = 101 OR E.DEPARTMENT_ID = 10)
AND E.DEPARTMENT_ID = D.DEPARTMENT_ID
AND D.LOCATION_ID = 1700;